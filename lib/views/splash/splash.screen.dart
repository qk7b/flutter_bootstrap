import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/main.dart';
import 'package:flutter_bootstrap_app/managers/onboarding_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnboardingCubit, OnboardingState>(
        listener: (_, state) {
          if (state.hasOnboarded) {
            context.goAppRoute(AppRoute.login);
            return;
          }

          // Go to onboarding
          context.goAppRoute(AppRoute.onboarding);
        },
        child: const Center(child: Text('SplashScreen')),
      ),
    );
  }
}
