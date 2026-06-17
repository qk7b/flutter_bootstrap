// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnboardingState _$OnboardingStateFromJson(Map<String, dynamic> json) =>
    _OnboardingState(
      hasOnboarded: json['hasOnboarded'] as bool? ?? false,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$OnboardingStateToJson(_OnboardingState instance) =>
    <String, dynamic>{
      'hasOnboarded': instance.hasOnboarded,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
