// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_errors.cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError()';
}


}

/// @nodoc
class $AppErrorCopyWith<$Res>  {
$AppErrorCopyWith(AppError _, $Res Function(AppError) __);
}


/// Adds pattern-matching-related methods to [AppError].
extension AppErrorPatterns on AppError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NoError value)?  none,TResult Function( _ErrorOccured value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoError() when none != null:
return none(_that);case _ErrorOccured() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NoError value)  none,required TResult Function( _ErrorOccured value)  error,}){
final _that = this;
switch (_that) {
case _NoError():
return none(_that);case _ErrorOccured():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NoError value)?  none,TResult? Function( _ErrorOccured value)?  error,}){
final _that = this;
switch (_that) {
case _NoError() when none != null:
return none(_that);case _ErrorOccured() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function( Object error,  StackTrace? trace)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoError() when none != null:
return none();case _ErrorOccured() when error != null:
return error(_that.error,_that.trace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function( Object error,  StackTrace? trace)  error,}) {final _that = this;
switch (_that) {
case _NoError():
return none();case _ErrorOccured():
return error(_that.error,_that.trace);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function( Object error,  StackTrace? trace)?  error,}) {final _that = this;
switch (_that) {
case _NoError() when none != null:
return none();case _ErrorOccured() when error != null:
return error(_that.error,_that.trace);case _:
  return null;

}
}

}

/// @nodoc


class _NoError implements AppError {
  const _NoError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError.none()';
}


}




/// @nodoc


class _ErrorOccured implements AppError {
  const _ErrorOccured(this.error, this.trace);
  

 final  Object error;
 final  StackTrace? trace;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorOccuredCopyWith<_ErrorOccured> get copyWith => __$ErrorOccuredCopyWithImpl<_ErrorOccured>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorOccured&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.trace, trace) || other.trace == trace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),trace);

@override
String toString() {
  return 'AppError.error(error: $error, trace: $trace)';
}


}

/// @nodoc
abstract mixin class _$ErrorOccuredCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory _$ErrorOccuredCopyWith(_ErrorOccured value, $Res Function(_ErrorOccured) _then) = __$ErrorOccuredCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace? trace
});




}
/// @nodoc
class __$ErrorOccuredCopyWithImpl<$Res>
    implements _$ErrorOccuredCopyWith<$Res> {
  __$ErrorOccuredCopyWithImpl(this._self, this._then);

  final _ErrorOccured _self;
  final $Res Function(_ErrorOccured) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? trace = freezed,}) {
  return _then(_ErrorOccured(
null == error ? _self.error : error ,freezed == trace ? _self.trace : trace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
