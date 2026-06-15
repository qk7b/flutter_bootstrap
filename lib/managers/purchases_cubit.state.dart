part of 'purchases_cubit.dart';

@freezed
abstract class PurchasesState with _$PurchasesState {
  const factory PurchasesState({
    required AsyncValueWrapper<Offerings> offerings,
    @Default({}) Map<String, EntitlementInfo> activeEntitlements,
    Package? basketSelectedPackage,
  }) = _PurchasesState;
}

extension PurchasesStateX on PurchasesState {
  bool get isPremium => activeEntitlements.containsKey('premium');
}