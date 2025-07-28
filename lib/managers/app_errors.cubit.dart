import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_errors.cubit.freezed.dart';

@injectable
class AppErrorCubit extends Cubit<AppError> {
  late StreamSubscription<AppEvent> _errorSubscription;

  AppErrorCubit({
    required AppEventBus eventBus,
  }) : super(const AppError.none()) {
    /// Listen for error that are sent from any other cubit
    _errorSubscription =
        eventBus.stream.where((e) => e is SomeErrorOccuredAppEvent).listen((e) {
      final errorEvent = e as SomeErrorOccuredAppEvent;
      emit(errorEvent.error);
    });
  }

  @override
  Future<void> close() {
    _errorSubscription.cancel();
    return super.close();
  }
}

@freezed
class AppError with _$AppError {
  const factory AppError.none() = NoError;

  const factory AppError.restorePurchaseFailed() = RestorePurchaseFailedError;

  const factory AppError.purchaseFailed() = PurchaseFailedError;
}
