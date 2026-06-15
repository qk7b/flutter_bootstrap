part of 'onboarding_cubit.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({@Default(false) bool hasOnboarded}) =
      _OnboardingState;

  factory OnboardingState.fromJson(Map<String, Object?> json) =>
      _$OnboardingStateFromJson(json);
}
