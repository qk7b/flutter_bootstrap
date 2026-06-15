import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_cubit.g.dart';
part 'onboarding_cubit.state.dart';

@injectable
class OnboardingCubit extends HydratedCubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState());

  @override
  String get storagePrefix => 'onboarding';

  @override
  OnboardingState? fromJson(Map<String, dynamic> json) =>
      OnboardingState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(OnboardingState state) => state.toJson();
}
