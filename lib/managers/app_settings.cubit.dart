import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_settings.cubit.freezed.dart';
part 'app_settings.cubit.g.dart';

@injectable
class AppSettingsCubit extends HydratedCubit<AppSettingsState> {
  AppSettingsCubit() : super(const AppSettingsState());

  void setTheme(AppTheme theme) {
    emit(
      state.copyWith(
        theme: theme,
      ),
    );
  }

  @override
  String get storagePrefix => 'app_settings';

  @override
  AppSettingsState? fromJson(Map<String, dynamic> json) {
    return AppSettingsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AppSettingsState state) {
    return state.toJson();
  }
}

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    @Default(AppTheme.system) AppTheme theme,
  }) = _AppSettingsState;

  factory AppSettingsState.fromJson(Map<String, Object?> json) =>
      _$AppSettingsStateFromJson(json);
}

enum AppTheme {
  @JsonValue('system')
  system,
  @JsonValue('dark')
  dark,
  @JsonValue('light')
  light;
}
