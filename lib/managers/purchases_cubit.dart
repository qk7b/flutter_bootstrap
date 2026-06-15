import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:flutter_bootstrap_app/managers/app_errors.cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'purchases_cubit.freezed.dart';
part 'purchases_cubit.state.dart';

@injectable
class PurchasesCubit extends Cubit<PurchasesState> {
  PurchasesCubit({required this.eventBus})
    : super(PurchasesState(offerings: AsyncValueWrapper.initial()));

  final AppEventBus eventBus;

  void identifyUser(String userId) {
    Purchases.logIn(userId).then((ci) => _loadEntitlements(ci.customerInfo));
  }

  void loadPackages() {
    emit(state.copyWith(offerings: AsyncValueWrapper.loading()));
    Purchases.getOfferings()
        .then((offerings) {
          final defaultPackage = offerings.all.entries
              .map((e) => e.value.availablePackages)
              .flattened
              .firstOrNull;
          emit(
            state.copyWith(
              offerings: AsyncValueWrapper.success(offerings),
              basketSelectedPackage: defaultPackage,
            ),
          );
        })
        .catchError((err) {
          eventBus.addEvent(
            AppEvent.error(AppError.error(err, StackTrace.current)),
          );
          emit(state.copyWith(offerings: AsyncValueWrapper.error(err: err)));
        });
  }

  void selectPackage(Package package) {
    emit(state.copyWith(basketSelectedPackage: package));
  }

  void restorePurchases() async {
    Purchases.restorePurchases()
        .then((customerInfo) => _loadEntitlements(customerInfo))
        .catchError((err) {
          eventBus.addEvent(
            AppEvent.error(AppError.error(err, StackTrace.current)),
          );
        });
  }

  void buyPackage() {
    if (state.basketSelectedPackage == null) return;
    Purchases.purchase(
      PurchaseParams.package(state.basketSelectedPackage!),
    ).then((pr) => _loadEntitlements(pr.customerInfo)).catchError((err) {
      eventBus.addEvent(
        AppEvent.error(AppError.error(err, StackTrace.current)),
      );
    });
  }

  void _loadEntitlements(CustomerInfo info) {
    emit(state.copyWith(activeEntitlements: info.entitlements.active));
  }
}
