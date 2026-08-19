// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchases_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PurchasesState implements DiagnosticableTreeMixin {

 AsyncValueWrapper<List<Package>> get packages; Package? get basketSelectedPackage; Map<String, EntitlementInfo> get activeEntitlements; AsyncValueWrapper<void> get buyStatus; bool get vipStatus;
/// Create a copy of PurchasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchasesStateCopyWith<PurchasesState> get copyWith => _$PurchasesStateCopyWithImpl<PurchasesState>(this as PurchasesState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PurchasesState'))
    ..add(DiagnosticsProperty('packages', packages))..add(DiagnosticsProperty('basketSelectedPackage', basketSelectedPackage))..add(DiagnosticsProperty('activeEntitlements', activeEntitlements))..add(DiagnosticsProperty('buyStatus', buyStatus))..add(DiagnosticsProperty('vipStatus', vipStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchasesState&&(identical(other.packages, packages) || other.packages == packages)&&(identical(other.basketSelectedPackage, basketSelectedPackage) || other.basketSelectedPackage == basketSelectedPackage)&&const DeepCollectionEquality().equals(other.activeEntitlements, activeEntitlements)&&(identical(other.buyStatus, buyStatus) || other.buyStatus == buyStatus)&&(identical(other.vipStatus, vipStatus) || other.vipStatus == vipStatus));
}


@override
int get hashCode => Object.hash(runtimeType,packages,basketSelectedPackage,const DeepCollectionEquality().hash(activeEntitlements),buyStatus,vipStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PurchasesState(packages: $packages, basketSelectedPackage: $basketSelectedPackage, activeEntitlements: $activeEntitlements, buyStatus: $buyStatus, vipStatus: $vipStatus)';
}


}

/// @nodoc
abstract mixin class $PurchasesStateCopyWith<$Res>  {
  factory $PurchasesStateCopyWith(PurchasesState value, $Res Function(PurchasesState) _then) = _$PurchasesStateCopyWithImpl;
@useResult
$Res call({
 AsyncValueWrapper<List<Package>> packages, Package? basketSelectedPackage, Map<String, EntitlementInfo> activeEntitlements, AsyncValueWrapper<void> buyStatus, bool vipStatus
});




}
/// @nodoc
class _$PurchasesStateCopyWithImpl<$Res>
    implements $PurchasesStateCopyWith<$Res> {
  _$PurchasesStateCopyWithImpl(this._self, this._then);

  final PurchasesState _self;
  final $Res Function(PurchasesState) _then;

/// Create a copy of PurchasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packages = null,Object? basketSelectedPackage = freezed,Object? activeEntitlements = null,Object? buyStatus = null,Object? vipStatus = null,}) {
  return _then(_self.copyWith(
packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as AsyncValueWrapper<List<Package>>,basketSelectedPackage: freezed == basketSelectedPackage ? _self.basketSelectedPackage : basketSelectedPackage // ignore: cast_nullable_to_non_nullable
as Package?,activeEntitlements: null == activeEntitlements ? _self.activeEntitlements : activeEntitlements // ignore: cast_nullable_to_non_nullable
as Map<String, EntitlementInfo>,buyStatus: null == buyStatus ? _self.buyStatus : buyStatus // ignore: cast_nullable_to_non_nullable
as AsyncValueWrapper<void>,vipStatus: null == vipStatus ? _self.vipStatus : vipStatus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchasesState].
extension PurchasesStatePatterns on PurchasesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchasesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchasesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchasesState value)  $default,){
final _that = this;
switch (_that) {
case _PurchasesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchasesState value)?  $default,){
final _that = this;
switch (_that) {
case _PurchasesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValueWrapper<List<Package>> packages,  Package? basketSelectedPackage,  Map<String, EntitlementInfo> activeEntitlements,  AsyncValueWrapper<void> buyStatus,  bool vipStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchasesState() when $default != null:
return $default(_that.packages,_that.basketSelectedPackage,_that.activeEntitlements,_that.buyStatus,_that.vipStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValueWrapper<List<Package>> packages,  Package? basketSelectedPackage,  Map<String, EntitlementInfo> activeEntitlements,  AsyncValueWrapper<void> buyStatus,  bool vipStatus)  $default,) {final _that = this;
switch (_that) {
case _PurchasesState():
return $default(_that.packages,_that.basketSelectedPackage,_that.activeEntitlements,_that.buyStatus,_that.vipStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValueWrapper<List<Package>> packages,  Package? basketSelectedPackage,  Map<String, EntitlementInfo> activeEntitlements,  AsyncValueWrapper<void> buyStatus,  bool vipStatus)?  $default,) {final _that = this;
switch (_that) {
case _PurchasesState() when $default != null:
return $default(_that.packages,_that.basketSelectedPackage,_that.activeEntitlements,_that.buyStatus,_that.vipStatus);case _:
  return null;

}
}

}

/// @nodoc


class _PurchasesState with DiagnosticableTreeMixin implements PurchasesState {
  const _PurchasesState({required this.packages, this.basketSelectedPackage, final  Map<String, EntitlementInfo> activeEntitlements = const {}, this.buyStatus = const AsyncValueWrapper(), this.vipStatus = false}): _activeEntitlements = activeEntitlements;
  

@override final  AsyncValueWrapper<List<Package>> packages;
@override final  Package? basketSelectedPackage;
 final  Map<String, EntitlementInfo> _activeEntitlements;
@override@JsonKey() Map<String, EntitlementInfo> get activeEntitlements {
  if (_activeEntitlements is EqualUnmodifiableMapView) return _activeEntitlements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_activeEntitlements);
}

@override@JsonKey() final  AsyncValueWrapper<void> buyStatus;
@override@JsonKey() final  bool vipStatus;

/// Create a copy of PurchasesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchasesStateCopyWith<_PurchasesState> get copyWith => __$PurchasesStateCopyWithImpl<_PurchasesState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PurchasesState'))
    ..add(DiagnosticsProperty('packages', packages))..add(DiagnosticsProperty('basketSelectedPackage', basketSelectedPackage))..add(DiagnosticsProperty('activeEntitlements', activeEntitlements))..add(DiagnosticsProperty('buyStatus', buyStatus))..add(DiagnosticsProperty('vipStatus', vipStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchasesState&&(identical(other.packages, packages) || other.packages == packages)&&(identical(other.basketSelectedPackage, basketSelectedPackage) || other.basketSelectedPackage == basketSelectedPackage)&&const DeepCollectionEquality().equals(other._activeEntitlements, _activeEntitlements)&&(identical(other.buyStatus, buyStatus) || other.buyStatus == buyStatus)&&(identical(other.vipStatus, vipStatus) || other.vipStatus == vipStatus));
}


@override
int get hashCode => Object.hash(runtimeType,packages,basketSelectedPackage,const DeepCollectionEquality().hash(_activeEntitlements),buyStatus,vipStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PurchasesState(packages: $packages, basketSelectedPackage: $basketSelectedPackage, activeEntitlements: $activeEntitlements, buyStatus: $buyStatus, vipStatus: $vipStatus)';
}


}

/// @nodoc
abstract mixin class _$PurchasesStateCopyWith<$Res> implements $PurchasesStateCopyWith<$Res> {
  factory _$PurchasesStateCopyWith(_PurchasesState value, $Res Function(_PurchasesState) _then) = __$PurchasesStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValueWrapper<List<Package>> packages, Package? basketSelectedPackage, Map<String, EntitlementInfo> activeEntitlements, AsyncValueWrapper<void> buyStatus, bool vipStatus
});




}
/// @nodoc
class __$PurchasesStateCopyWithImpl<$Res>
    implements _$PurchasesStateCopyWith<$Res> {
  __$PurchasesStateCopyWithImpl(this._self, this._then);

  final _PurchasesState _self;
  final $Res Function(_PurchasesState) _then;

/// Create a copy of PurchasesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packages = null,Object? basketSelectedPackage = freezed,Object? activeEntitlements = null,Object? buyStatus = null,Object? vipStatus = null,}) {
  return _then(_PurchasesState(
packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as AsyncValueWrapper<List<Package>>,basketSelectedPackage: freezed == basketSelectedPackage ? _self.basketSelectedPackage : basketSelectedPackage // ignore: cast_nullable_to_non_nullable
as Package?,activeEntitlements: null == activeEntitlements ? _self._activeEntitlements : activeEntitlements // ignore: cast_nullable_to_non_nullable
as Map<String, EntitlementInfo>,buyStatus: null == buyStatus ? _self.buyStatus : buyStatus // ignore: cast_nullable_to_non_nullable
as AsyncValueWrapper<void>,vipStatus: null == vipStatus ? _self.vipStatus : vipStatus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
