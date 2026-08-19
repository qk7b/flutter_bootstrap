// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingState {

 User? get originalUser; String get userName; AsyncValueWrapper<bool> get finishOnboardingStatus;
/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingStateCopyWith<OnboardingState> get copyWith => _$OnboardingStateCopyWithImpl<OnboardingState>(this as OnboardingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState&&(identical(other.originalUser, originalUser) || other.originalUser == originalUser)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.finishOnboardingStatus, finishOnboardingStatus) || other.finishOnboardingStatus == finishOnboardingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,originalUser,userName,finishOnboardingStatus);

@override
String toString() {
  return 'OnboardingState(originalUser: $originalUser, userName: $userName, finishOnboardingStatus: $finishOnboardingStatus)';
}


}

/// @nodoc
abstract mixin class $OnboardingStateCopyWith<$Res>  {
  factory $OnboardingStateCopyWith(OnboardingState value, $Res Function(OnboardingState) _then) = _$OnboardingStateCopyWithImpl;
@useResult
$Res call({
 User? originalUser, String userName, AsyncValueWrapper<bool> finishOnboardingStatus
});


$UserCopyWith<$Res>? get originalUser;

}
/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._self, this._then);

  final OnboardingState _self;
  final $Res Function(OnboardingState) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalUser = freezed,Object? userName = null,Object? finishOnboardingStatus = null,}) {
  return _then(_self.copyWith(
originalUser: freezed == originalUser ? _self.originalUser : originalUser // ignore: cast_nullable_to_non_nullable
as User?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,finishOnboardingStatus: null == finishOnboardingStatus ? _self.finishOnboardingStatus : finishOnboardingStatus // ignore: cast_nullable_to_non_nullable
as AsyncValueWrapper<bool>,
  ));
}
/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get originalUser {
    if (_self.originalUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.originalUser!, (value) {
    return _then(_self.copyWith(originalUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnboardingState].
extension OnboardingStatePatterns on OnboardingState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingState value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingState value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? originalUser,  String userName,  AsyncValueWrapper<bool> finishOnboardingStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that.originalUser,_that.userName,_that.finishOnboardingStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? originalUser,  String userName,  AsyncValueWrapper<bool> finishOnboardingStatus)  $default,) {final _that = this;
switch (_that) {
case _OnboardingState():
return $default(_that.originalUser,_that.userName,_that.finishOnboardingStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? originalUser,  String userName,  AsyncValueWrapper<bool> finishOnboardingStatus)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingState() when $default != null:
return $default(_that.originalUser,_that.userName,_that.finishOnboardingStatus);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingState implements OnboardingState {
  const _OnboardingState({this.originalUser, this.userName = '', this.finishOnboardingStatus = const AsyncValueWrapper(value: false)});
  

@override final  User? originalUser;
@override@JsonKey() final  String userName;
@override@JsonKey() final  AsyncValueWrapper<bool> finishOnboardingStatus;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingStateCopyWith<_OnboardingState> get copyWith => __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingState&&(identical(other.originalUser, originalUser) || other.originalUser == originalUser)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.finishOnboardingStatus, finishOnboardingStatus) || other.finishOnboardingStatus == finishOnboardingStatus));
}


@override
int get hashCode => Object.hash(runtimeType,originalUser,userName,finishOnboardingStatus);

@override
String toString() {
  return 'OnboardingState(originalUser: $originalUser, userName: $userName, finishOnboardingStatus: $finishOnboardingStatus)';
}


}

/// @nodoc
abstract mixin class _$OnboardingStateCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(_OnboardingState value, $Res Function(_OnboardingState) _then) = __$OnboardingStateCopyWithImpl;
@override @useResult
$Res call({
 User? originalUser, String userName, AsyncValueWrapper<bool> finishOnboardingStatus
});


@override $UserCopyWith<$Res>? get originalUser;

}
/// @nodoc
class __$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(this._self, this._then);

  final _OnboardingState _self;
  final $Res Function(_OnboardingState) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalUser = freezed,Object? userName = null,Object? finishOnboardingStatus = null,}) {
  return _then(_OnboardingState(
originalUser: freezed == originalUser ? _self.originalUser : originalUser // ignore: cast_nullable_to_non_nullable
as User?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,finishOnboardingStatus: null == finishOnboardingStatus ? _self.finishOnboardingStatus : finishOnboardingStatus // ignore: cast_nullable_to_non_nullable
as AsyncValueWrapper<bool>,
  ));
}

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get originalUser {
    if (_self.originalUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.originalUser!, (value) {
    return _then(_self.copyWith(originalUser: value));
  });
}
}

// dart format on
