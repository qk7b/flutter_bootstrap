// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettingsState _$AppSettingsStateFromJson(Map<String, dynamic> json) =>
    _AppSettingsState(
      theme:
          $enumDecodeNullable(_$AppThemeEnumMap, json['theme']) ??
          AppTheme.system,
    );

Map<String, dynamic> _$AppSettingsStateToJson(_AppSettingsState instance) =>
    <String, dynamic>{'theme': _$AppThemeEnumMap[instance.theme]!};

const _$AppThemeEnumMap = {
  AppTheme.system: 'system',
  AppTheme.dark: 'dark',
  AppTheme.light: 'light',
};
