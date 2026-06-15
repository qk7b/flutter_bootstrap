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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NoError value)?  none,TResult Function( RestorePurchaseFailedError value)?  restorePurchaseFailed,TResult Function( PurchaseFailedError value)?  purchaseFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NoError() when none != null:
return none(_that);case RestorePurchaseFailedError() when restorePurchaseFailed != null:
return restorePurchaseFailed(_that);case PurchaseFailedError() when purchaseFailed != null:
return purchaseFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NoError value)  none,required TResult Function( RestorePurchaseFailedError value)  restorePurchaseFailed,required TResult Function( PurchaseFailedError value)  purchaseFailed,}){
final _that = this;
switch (_that) {
case NoError():
return none(_that);case RestorePurchaseFailedError():
return restorePurchaseFailed(_that);case PurchaseFailedError():
return purchaseFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NoError value)?  none,TResult? Function( RestorePurchaseFailedError value)?  restorePurchaseFailed,TResult? Function( PurchaseFailedError value)?  purchaseFailed,}){
final _that = this;
switch (_that) {
case NoError() when none != null:
return none(_that);case RestorePurchaseFailedError() when restorePurchaseFailed != null:
return restorePurchaseFailed(_that);case PurchaseFailedError() when purchaseFailed != null:
return purchaseFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function()?  restorePurchaseFailed,TResult Function()?  purchaseFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NoError() when none != null:
return none();case RestorePurchaseFailedError() when restorePurchaseFailed != null:
return restorePurchaseFailed();case PurchaseFailedError() when purchaseFailed != null:
return purchaseFailed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function()  restorePurchaseFailed,required TResult Function()  purchaseFailed,}) {final _that = this;
switch (_that) {
case NoError():
return none();case RestorePurchaseFailedError():
return restorePurchaseFailed();case PurchaseFailedError():
return purchaseFailed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function()?  restorePurchaseFailed,TResult? Function()?  purchaseFailed,}) {final _that = this;
switch (_that) {
case NoError() when none != null:
return none();case RestorePurchaseFailedError() when restorePurchaseFailed != null:
return restorePurchaseFailed();case PurchaseFailedError() when purchaseFailed != null:
return purchaseFailed();case _:
  return null;

}
}

}

/// @nodoc


class NoError implements AppError {
  const NoError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError.none()';
}


}




/// @nodoc


class RestorePurchaseFailedError implements AppError {
  const RestorePurchaseFailedError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestorePurchaseFailedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError.restorePurchaseFailed()';
}


}




/// @nodoc


class PurchaseFailedError implements AppError {
  const PurchaseFailedError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseFailedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError.purchaseFailed()';
}


}




// dart format on
