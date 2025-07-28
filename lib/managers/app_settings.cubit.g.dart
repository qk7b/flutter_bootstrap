// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsStateImpl _$$AppSettingsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsStateImpl(
      theme: $enumDecodeNullable(_$AppThemeEnumMap, json['theme']) ??
          AppTheme.system,
    );

Map<String, dynamic> _$$AppSettingsStateImplToJson(
        _$AppSettingsStateImpl instance) =>
    <String, dynamic>{
      'theme': _$AppThemeEnumMap[instance.theme]!,
    };

const _$AppThemeEnumMap = {
  AppTheme.system: 'system',
  AppTheme.dark: 'dark',
  AppTheme.light: 'light',
};
