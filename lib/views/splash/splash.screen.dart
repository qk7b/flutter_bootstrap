import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/injection.dart';
import 'package:flutter_bootstrap_app/managers/onboarding_cubit.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:go_router/go_router.dart';

/// [SplashScreen] is the first screen shown to the user
/// it handles app initialization and routing to basics screens like
/// [OnboardingScreen], [HomeScreen] or even if needed [LoginScreen]
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnboardingCubit, OnboardingState>(
        listener: (_, state) {
          final hasOnboarded = state.hasOnboarded;

          if (!hasOnboarded) {
            getIt<GoRouter>().goAppRoute(AppRoute.onboarding);
            return;
          }

          // Go to login
          getIt<GoRouter>().goAppRoute(AppRoute.login);
        },
        child: const Center(child: Text('SplashScreen')),
      ),
    );
  }
}
