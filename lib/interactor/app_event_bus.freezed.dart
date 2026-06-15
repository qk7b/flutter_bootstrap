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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserLoadedAppEvent value)?  userLoaded,TResult Function( PremiumLoadedAppEvent value)?  premiumStatusChanged,TResult Function( SomeErrorOccuredAppEvent value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that);case PremiumLoadedAppEvent() when premiumStatusChanged != null:
return premiumStatusChanged(_that);case SomeErrorOccuredAppEvent() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserLoadedAppEvent value)  userLoaded,required TResult Function( PremiumLoadedAppEvent value)  premiumStatusChanged,required TResult Function( SomeErrorOccuredAppEvent value)  error,}){
final _that = this;
switch (_that) {
case UserLoadedAppEvent():
return userLoaded(_that);case PremiumLoadedAppEvent():
return premiumStatusChanged(_that);case SomeErrorOccuredAppEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserLoadedAppEvent value)?  userLoaded,TResult? Function( PremiumLoadedAppEvent value)?  premiumStatusChanged,TResult? Function( SomeErrorOccuredAppEvent value)?  error,}){
final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that);case PremiumLoadedAppEvent() when premiumStatusChanged != null:
return premiumStatusChanged(_that);case SomeErrorOccuredAppEvent() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  userLoaded,TResult Function( bool isPremium)?  premiumStatusChanged,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that.userId);case PremiumLoadedAppEvent() when premiumStatusChanged != null:
return premiumStatusChanged(_that.isPremium);case SomeErrorOccuredAppEvent() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  userLoaded,required TResult Function( bool isPremium)  premiumStatusChanged,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case UserLoadedAppEvent():
return userLoaded(_that.userId);case PremiumLoadedAppEvent():
return premiumStatusChanged(_that.isPremium);case SomeErrorOccuredAppEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  userLoaded,TResult? Function( bool isPremium)?  premiumStatusChanged,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case UserLoadedAppEvent() when userLoaded != null:
return userLoaded(_that.userId);case PremiumLoadedAppEvent() when premiumStatusChanged != null:
return premiumStatusChanged(_that.isPremium);case SomeErrorOccuredAppEvent() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UserLoadedAppEvent implements AppEvent {
  const UserLoadedAppEvent(this.userId);
  

 final  String userId;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLoadedAppEventCopyWith<UserLoadedAppEvent> get copyWith => _$UserLoadedAppEventCopyWithImpl<UserLoadedAppEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoadedAppEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'AppEvent.userLoaded(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UserLoadedAppEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $UserLoadedAppEventCopyWith(UserLoadedAppEvent value, $Res Function(UserLoadedAppEvent) _then) = _$UserLoadedAppEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$UserLoadedAppEventCopyWithImpl<$Res>
    implements $UserLoadedAppEventCopyWith<$Res> {
  _$UserLoadedAppEventCopyWithImpl(this._self, this._then);

  final UserLoadedAppEvent _self;
  final $Res Function(UserLoadedAppEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(UserLoadedAppEvent(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PremiumLoadedAppEvent implements AppEvent {
  const PremiumLoadedAppEvent(this.isPremium);
  

 final  bool isPremium;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PremiumLoadedAppEventCopyWith<PremiumLoadedAppEvent> get copyWith => _$PremiumLoadedAppEventCopyWithImpl<PremiumLoadedAppEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumLoadedAppEvent&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium));
}


@override
int get hashCode => Object.hash(runtimeType,isPremium);

@override
String toString() {
  return 'AppEvent.premiumStatusChanged(isPremium: $isPremium)';
}


}

/// @nodoc
abstract mixin class $PremiumLoadedAppEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $PremiumLoadedAppEventCopyWith(PremiumLoadedAppEvent value, $Res Function(PremiumLoadedAppEvent) _then) = _$PremiumLoadedAppEventCopyWithImpl;
@useResult
$Res call({
 bool isPremium
});




}
/// @nodoc
class _$PremiumLoadedAppEventCopyWithImpl<$Res>
    implements $PremiumLoadedAppEventCopyWith<$Res> {
  _$PremiumLoadedAppEventCopyWithImpl(this._self, this._then);

  final PremiumLoadedAppEvent _self;
  final $Res Function(PremiumLoadedAppEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isPremium = null,}) {
  return _then(PremiumLoadedAppEvent(
null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SomeErrorOccuredAppEvent implements AppEvent {
  const SomeErrorOccuredAppEvent(this.error);
  

 final  AppError error;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SomeErrorOccuredAppEventCopyWith<SomeErrorOccuredAppEvent> get copyWith => _$SomeErrorOccuredAppEventCopyWithImpl<SomeErrorOccuredAppEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SomeErrorOccuredAppEvent&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AppEvent.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SomeErrorOccuredAppEventCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $SomeErrorOccuredAppEventCopyWith(SomeErrorOccuredAppEvent value, $Res Function(SomeErrorOccuredAppEvent) _then) = _$SomeErrorOccuredAppEventCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SomeErrorOccuredAppEventCopyWithImpl<$Res>
    implements $SomeErrorOccuredAppEventCopyWith<$Res> {
  _$SomeErrorOccuredAppEventCopyWithImpl(this._self, this._then);

  final SomeErrorOccuredAppEvent _self;
  final $Res Function(SomeErrorOccuredAppEvent) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SomeErrorOccuredAppEvent(
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
