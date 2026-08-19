import 'dart:async';

import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_cubit.freezed.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    User? originalUser,
    @Default('') String userName,
    @Default(AsyncValueWrapper(value: false))
    AsyncValueWrapper<bool> finishOnboardingStatus,
  }) = _OnboardingState;

  factory OnboardingState.initial() => const OnboardingState();
}

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({
    required AppEventBus appEventBus,
    required AnalyticsRepository analyticsRepository,
    required UserRepository userRepository,
  }) : _userRepository = userRepository,
       _analyticsRepository = analyticsRepository,
       super(OnboardingState.initial()) {
    _userLoadedSubscription = appEventBus.stream
        .where((e) => e is UserLoadedAppEvent)
        .cast<UserLoadedAppEvent>()
        .listen((e) => emit(state.copyWith(originalUser: e.user)));
  }

  final UserRepository _userRepository;
  final AnalyticsRepository _analyticsRepository;
  StreamSubscription<UserLoadedAppEvent>? _userLoadedSubscription;

  void setOnboardingDone() {
    throw UnimplementedError('setOnboardingDone is not implemented yet');
  }

  void setStepCompleted(int stepIndex, String screenTitle) {
    _analyticsRepository.trackOnboardingStepCompleted(stepIndex, screenTitle);
  }

  @override
  Future<void> close() {
    _userLoadedSubscription?.cancel();
    return super.close();
  }
}
