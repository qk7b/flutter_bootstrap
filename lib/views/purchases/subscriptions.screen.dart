import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/managers/offerings_cubit.dart';
import 'package:purchases_flutter/models/offerings_wrapper.dart';

class PurchasesScreen extends StatelessWidget {
  const PurchasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OfferingsCubit, AsyncValueWrapper<Offerings>>(
        builder: (context, offerings) {
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
