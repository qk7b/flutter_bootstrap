import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/managers/purchases_cubit.dart';

class PayWallScreen extends StatelessWidget {
  const PayWallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PurchasesCubit, PurchasesState>(
        builder: (context, offerings) {
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
