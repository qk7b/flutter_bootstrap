import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_errors.cubit.freezed.dart';

@injectable
class AppErrorCubit extends Cubit<AppError> {
  late StreamSubscription _errorSubscription;

  AppErrorCubit({required AppEventBus eventBus})
    : super(const AppError.none()) {
    /// Listen for error that are sent from any other cubit
    _errorSubscription = eventBus.stream
        .where((e) => e is _ErrorOccured)
        .cast<_ErrorOccured>()
        .listen(emit);
  }

  @override
  Future<void> close() {
    _errorSubscription.cancel();
    return super.close();
  }
}

@freezed
abstract class AppError with _$AppError {
  const factory AppError.none() = _NoError;
  const factory AppError.error(Object error, StackTrace? trace) = _ErrorOccured;
}
