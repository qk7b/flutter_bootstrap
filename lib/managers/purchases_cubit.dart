import 'dart:async';

import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:flutter_bootstrap_app/managers/app_errors.cubit.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'purchases_cubit.freezed.dart';

@freezed
abstract class PurchasesState with _$PurchasesState {
  const factory PurchasesState({
    required AsyncValueWrapper<List<Package>> packages,
    Package? basketSelectedPackage,
    @Default({}) Map<String, EntitlementInfo> activeEntitlements,
    @Default(AsyncValueWrapper()) AsyncValueWrapper<void> buyStatus,
    @Default(false) bool vipStatus,
  }) = _PurchasesState;
}

extension PurchasesStateX on PurchasesState {
  bool get isPremium =>
      activeEntitlements.containsKey('premium') || vipStatus || kDebugMode;
}

@singleton
class PurchasesCubit extends Cubit<PurchasesState> {
  PurchasesCubit({required this.eventBus})
    : super(PurchasesState(packages: AsyncValueWrapper.initial())) {
    userLoginSubscription = eventBus.stream
        .where((e) => e is UserLoadedAppEvent)
        .cast<UserLoadedAppEvent>()
        .listen((e) => identifyUser(e.user));
  }

  final AppEventBus eventBus;
  StreamSubscription? userLoginSubscription;

  void identifyUser(User user) {
    emit(state.copyWith(vipStatus: user.isVip));
    Purchases.logIn(user.id).then((ci) => _loadEntitlements(ci.customerInfo));
  }

  void loadPackages() {
    emit(
      state.copyWith(
        packages: AsyncValueWrapper.loading(),
        buyStatus: AsyncValueWrapper.initial(),
      ),
    );
    Purchases.getOfferings()
        .then((offerings) {
          final defaultOffering = offerings.current;
          final packages = defaultOffering?.availablePackages ?? [];
          final defaultPackage = defaultOffering?.availablePackages.firstOrNull;
          emit(
            state.copyWith(
              packages: AsyncValueWrapper.success(packages),
              basketSelectedPackage: defaultPackage,
            ),
          );
        })
        .catchError((err) {
          eventBus.addEvent(
            AppEvent.error(AppError.error(err, StackTrace.current)),
          );
          emit(state.copyWith(packages: AsyncValueWrapper.error(err: err)));
        });
  }

  void selectPackage(Package package) {
    emit(state.copyWith(basketSelectedPackage: package));
  }

  void restorePurchases() async {
    emit(state.copyWith(buyStatus: AsyncValueWrapper.loading()));
    Purchases.restorePurchases()
        .then((customerInfo) {
          _loadEntitlements(customerInfo);
          if (state.isPremium) {
            emit(state.copyWith(buyStatus: AsyncValueWrapper.success(null)));
          } else {
            eventBus.addEvent(
              AppEvent.error(
                AppError.error(
                  'No active premium entitlements found',
                  StackTrace.current,
                ),
              ),
            );
          }
        })
        .catchError((err) {
          eventBus.addEvent(
            AppEvent.error(AppError.error(err, StackTrace.current)),
          );
          emit(state.copyWith(buyStatus: AsyncValueWrapper.error(err: err)));
        });
  }

  void buyPackage() {
    if (state.basketSelectedPackage == null) return;
    emit(state.copyWith(buyStatus: AsyncValueWrapper.loading()));
    Purchases.purchase(PurchaseParams.package(state.basketSelectedPackage!))
        .then((pr) {
          _loadEntitlements(pr.customerInfo);
          emit(state.copyWith(buyStatus: AsyncValueWrapper.success(null)));
        })
        .catchError((err) {
          eventBus.addEvent(
            AppEvent.error(AppError.error(err, StackTrace.current)),
          );
          emit(state.copyWith(buyStatus: AsyncValueWrapper.error(err: err)));
        });
  }

  void _loadEntitlements(CustomerInfo info) {
    final activeEntitlements = info.entitlements.active;
    final newState = state.copyWith(activeEntitlements: activeEntitlements);
    emit(newState);
  }

  @override
  Future<void> close() async {
    await userLoginSubscription?.cancel();
    return super.close();
  }
}
