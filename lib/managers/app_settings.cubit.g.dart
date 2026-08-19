// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettingsState _$AppSettingsStateFromJson(Map<String, dynamic> json) =>
    _AppSettingsState(
      theme:
          $enumDecodeNullable(_$ThemeModeEnumMap, json['theme']) ??
          ThemeMode.system,
    );

Map<String, dynamic> _$AppSettingsStateToJson(_AppSettingsState instance) =>
    <String, dynamic>{'theme': _$ThemeModeEnumMap[instance.theme]!};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.dark: 'dark',
  ThemeMode.light: 'light',
};
