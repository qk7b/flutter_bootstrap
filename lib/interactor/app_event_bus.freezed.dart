// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_event_bus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) userLoaded,
    required TResult Function(bool isPremium) premiumStatusChanged,
    required TResult Function(AppError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? userLoaded,
    TResult? Function(bool isPremium)? premiumStatusChanged,
    TResult? Function(AppError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? userLoaded,
    TResult Function(bool isPremium)? premiumStatusChanged,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadedAppEvent value) userLoaded,
    required TResult Function(PremiumLoadedAppEvent value) premiumStatusChanged,
    required TResult Function(SomeErrorOccuredAppEvent value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoadedAppEvent value)? userLoaded,
    TResult? Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult? Function(SomeErrorOccuredAppEvent value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadedAppEvent value)? userLoaded,
    TResult Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult Function(SomeErrorOccuredAppEvent value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserLoadedAppEventImplCopyWith<$Res> {
  factory _$$UserLoadedAppEventImplCopyWith(_$UserLoadedAppEventImpl value,
          $Res Function(_$UserLoadedAppEventImpl) then) =
      __$$UserLoadedAppEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$UserLoadedAppEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$UserLoadedAppEventImpl>
    implements _$$UserLoadedAppEventImplCopyWith<$Res> {
  __$$UserLoadedAppEventImplCopyWithImpl(_$UserLoadedAppEventImpl _value,
      $Res Function(_$UserLoadedAppEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserLoadedAppEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoadedAppEventImpl implements UserLoadedAppEvent {
  const _$UserLoadedAppEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'AppEvent.userLoaded(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedAppEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedAppEventImplCopyWith<_$UserLoadedAppEventImpl> get copyWith =>
      __$$UserLoadedAppEventImplCopyWithImpl<_$UserLoadedAppEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) userLoaded,
    required TResult Function(bool isPremium) premiumStatusChanged,
    required TResult Function(AppError error) error,
  }) {
    return userLoaded(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? userLoaded,
    TResult? Function(bool isPremium)? premiumStatusChanged,
    TResult? Function(AppError error)? error,
  }) {
    return userLoaded?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? userLoaded,
    TResult Function(bool isPremium)? premiumStatusChanged,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadedAppEvent value) userLoaded,
    required TResult Function(PremiumLoadedAppEvent value) premiumStatusChanged,
    required TResult Function(SomeErrorOccuredAppEvent value) error,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoadedAppEvent value)? userLoaded,
    TResult? Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult? Function(SomeErrorOccuredAppEvent value)? error,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadedAppEvent value)? userLoaded,
    TResult Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult Function(SomeErrorOccuredAppEvent value)? error,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoadedAppEvent implements AppEvent {
  const factory UserLoadedAppEvent(final String userId) =
      _$UserLoadedAppEventImpl;

  String get userId;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoadedAppEventImplCopyWith<_$UserLoadedAppEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PremiumLoadedAppEventImplCopyWith<$Res> {
  factory _$$PremiumLoadedAppEventImplCopyWith(
          _$PremiumLoadedAppEventImpl value,
          $Res Function(_$PremiumLoadedAppEventImpl) then) =
      __$$PremiumLoadedAppEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPremium});
}

/// @nodoc
class __$$PremiumLoadedAppEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$PremiumLoadedAppEventImpl>
    implements _$$PremiumLoadedAppEventImplCopyWith<$Res> {
  __$$PremiumLoadedAppEventImplCopyWithImpl(_$PremiumLoadedAppEventImpl _value,
      $Res Function(_$PremiumLoadedAppEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPremium = null,
  }) {
    return _then(_$PremiumLoadedAppEventImpl(
      null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PremiumLoadedAppEventImpl implements PremiumLoadedAppEvent {
  const _$PremiumLoadedAppEventImpl(this.isPremium);

  @override
  final bool isPremium;

  @override
  String toString() {
    return 'AppEvent.premiumStatusChanged(isPremium: $isPremium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PremiumLoadedAppEventImpl &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPremium);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PremiumLoadedAppEventImplCopyWith<_$PremiumLoadedAppEventImpl>
      get copyWith => __$$PremiumLoadedAppEventImplCopyWithImpl<
          _$PremiumLoadedAppEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) userLoaded,
    required TResult Function(bool isPremium) premiumStatusChanged,
    required TResult Function(AppError error) error,
  }) {
    return premiumStatusChanged(isPremium);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? userLoaded,
    TResult? Function(bool isPremium)? premiumStatusChanged,
    TResult? Function(AppError error)? error,
  }) {
    return premiumStatusChanged?.call(isPremium);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? userLoaded,
    TResult Function(bool isPremium)? premiumStatusChanged,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (premiumStatusChanged != null) {
      return premiumStatusChanged(isPremium);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadedAppEvent value) userLoaded,
    required TResult Function(PremiumLoadedAppEvent value) premiumStatusChanged,
    required TResult Function(SomeErrorOccuredAppEvent value) error,
  }) {
    return premiumStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoadedAppEvent value)? userLoaded,
    TResult? Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult? Function(SomeErrorOccuredAppEvent value)? error,
  }) {
    return premiumStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadedAppEvent value)? userLoaded,
    TResult Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult Function(SomeErrorOccuredAppEvent value)? error,
    required TResult orElse(),
  }) {
    if (premiumStatusChanged != null) {
      return premiumStatusChanged(this);
    }
    return orElse();
  }
}

abstract class PremiumLoadedAppEvent implements AppEvent {
  const factory PremiumLoadedAppEvent(final bool isPremium) =
      _$PremiumLoadedAppEventImpl;

  bool get isPremium;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PremiumLoadedAppEventImplCopyWith<_$PremiumLoadedAppEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SomeErrorOccuredAppEventImplCopyWith<$Res> {
  factory _$$SomeErrorOccuredAppEventImplCopyWith(
          _$SomeErrorOccuredAppEventImpl value,
          $Res Function(_$SomeErrorOccuredAppEventImpl) then) =
      __$$SomeErrorOccuredAppEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});

  $AppErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$SomeErrorOccuredAppEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$SomeErrorOccuredAppEventImpl>
    implements _$$SomeErrorOccuredAppEventImplCopyWith<$Res> {
  __$$SomeErrorOccuredAppEventImplCopyWithImpl(
      _$SomeErrorOccuredAppEventImpl _value,
      $Res Function(_$SomeErrorOccuredAppEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SomeErrorOccuredAppEventImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res> get error {
    return $AppErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$SomeErrorOccuredAppEventImpl implements SomeErrorOccuredAppEvent {
  const _$SomeErrorOccuredAppEventImpl(this.error);

  @override
  final AppError error;

  @override
  String toString() {
    return 'AppEvent.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomeErrorOccuredAppEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SomeErrorOccuredAppEventImplCopyWith<_$SomeErrorOccuredAppEventImpl>
      get copyWith => __$$SomeErrorOccuredAppEventImplCopyWithImpl<
          _$SomeErrorOccuredAppEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) userLoaded,
    required TResult Function(bool isPremium) premiumStatusChanged,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? userLoaded,
    TResult? Function(bool isPremium)? premiumStatusChanged,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? userLoaded,
    TResult Function(bool isPremium)? premiumStatusChanged,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoadedAppEvent value) userLoaded,
    required TResult Function(PremiumLoadedAppEvent value) premiumStatusChanged,
    required TResult Function(SomeErrorOccuredAppEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoadedAppEvent value)? userLoaded,
    TResult? Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult? Function(SomeErrorOccuredAppEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoadedAppEvent value)? userLoaded,
    TResult Function(PremiumLoadedAppEvent value)? premiumStatusChanged,
    TResult Function(SomeErrorOccuredAppEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SomeErrorOccuredAppEvent implements AppEvent {
  const factory SomeErrorOccuredAppEvent(final AppError error) =
      _$SomeErrorOccuredAppEventImpl;

  AppError get error;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SomeErrorOccuredAppEventImplCopyWith<_$SomeErrorOccuredAppEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
