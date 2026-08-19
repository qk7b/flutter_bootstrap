// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_event_bus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserLoadedAppEvent value)?  userLoaded,TResult Function( ErrorOccuredAppEvent value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that);case ErrorOccuredAppEvent() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserLoadedAppEvent value)  userLoaded,required TResult Function( ErrorOccuredAppEvent value)  error,}){
final _that = this;
switch (_that) {
case UserLoadedAppEvent():
return userLoaded(_that);case ErrorOccuredAppEvent():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserLoadedAppEvent value)?  userLoaded,TResult? Function( ErrorOccuredAppEvent value)?  error,}){
final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that);case ErrorOccuredAppEvent() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( User user)?  userLoaded,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that.user);case ErrorOccuredAppEvent() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( User user)  userLoaded,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case UserLoadedAppEvent():
return userLoaded(_that.user);case ErrorOccuredAppEvent():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( User user)?  userLoaded,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that.user);case ErrorOccuredAppEvent() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UserLoadedAppEvent implements AppEvent {
  const UserLoadedAppEvent(this.user);
  

 final  User user;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLoadedAppEventCopyWith<UserLoadedAppEvent> get copyWith => _$UserLoadedAppEventCopyWithImpl<UserLoadedAppEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoadedAppEvent&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AppEvent.userLoaded(user: $user)';
}


}

/// @nodoc
abstract mixin class $UserLoadedAppEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $UserLoadedAppEventCopyWith(UserLoadedAppEvent value, $Res Function(UserLoadedAppEvent) _then) = _$UserLoadedAppEventCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$UserLoadedAppEventCopyWithImpl<$Res>
    implements $UserLoadedAppEventCopyWith<$Res> {
  _$UserLoadedAppEventCopyWithImpl(this._self, this._then);

  final UserLoadedAppEvent _self;
  final $Res Function(UserLoadedAppEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(UserLoadedAppEvent(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class ErrorOccuredAppEvent implements AppEvent {
  const ErrorOccuredAppEvent(this.error);
  

 final  AppError error;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorOccuredAppEventCopyWith<ErrorOccuredAppEvent> get copyWith => _$ErrorOccuredAppEventCopyWithImpl<ErrorOccuredAppEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorOccuredAppEvent&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AppEvent.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorOccuredAppEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $ErrorOccuredAppEventCopyWith(ErrorOccuredAppEvent value, $Res Function(ErrorOccuredAppEvent) _then) = _$ErrorOccuredAppEventCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$ErrorOccuredAppEventCopyWithImpl<$Res>
    implements $ErrorOccuredAppEventCopyWith<$Res> {
  _$ErrorOccuredAppEventCopyWithImpl(this._self, this._then);

  final ErrorOccuredAppEvent _self;
  final $Res Function(ErrorOccuredAppEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorOccuredAppEvent(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
