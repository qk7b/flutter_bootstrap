import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_settings.cubit.freezed.dart';
part 'app_settings.cubit.g.dart';

@freezed
abstract class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    @Default(ThemeMode.system) ThemeMode theme,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(true)
    bool areAnalyticsAuthorized,
  }) = _AppSettingsState;

  factory AppSettingsState.fromJson(Map<String, Object?> json) =>
      _$AppSettingsStateFromJson(json);
}

enum ThemeMode {
  @JsonValue('system')
  system,
  @JsonValue('dark')
  dark,
  @JsonValue('light')
  light,
}

extension ThemeModeX on ThemeMode {
  ThemeMode get themeMode => this;
}

@injectable
class AppSettingsCubit extends HydratedCubit<AppSettingsState> {
  AppSettingsCubit({required this.analyticsRepository})
    : super(const AppSettingsState()) {
    analyticsRepository.isTrackingActive().then((isTrackingActive) {
      emit(state.copyWith(areAnalyticsAuthorized: isTrackingActive));
    });
  }

  final AnalyticsRepository analyticsRepository;

  void setTheme(ThemeMode theme) {
    emit(state.copyWith(theme: theme));
  }

  Future<void> setAnalyticsConsent({
    required bool areAnalyticsAuthorized,
  }) async {
    if (areAnalyticsAuthorized) {
      await analyticsRepository.activateTracking();
    } else {
      await analyticsRepository.deactivateTracking();
    }
    emit(state.copyWith(areAnalyticsAuthorized: areAnalyticsAuthorized));
  }

  @override
  String get storagePrefix => 'app_settings';

  @override
  AppSettingsState? fromJson(Map<String, dynamic> json) =>
      AppSettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppSettingsState state) => state.toJson();
}
