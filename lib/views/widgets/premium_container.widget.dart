import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/managers/purchases_cubit.dart';

class PremiumContainer extends StatelessWidget {
  final Widget Function(BuildContext context, bool isPremium) builder;

  const PremiumContainer({required this.builder, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PurchasesCubit, PurchasesState, bool>(
      selector: (state) => state.isPremium,
      builder: builder,
    );
  }
}
