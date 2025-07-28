import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/injection.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:go_router/go_router.dart';

/// [SplashScreen] is the first screen shown to the user
/// it handles app initialization and routing to basics screens like
/// [OnboardingScreen], [HomeScreen] or even if needed [LoginScreen]
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future(() async {
      // Check for routing
      bool onboardingDone = false;
      // await ref.read(localDataServiceProvider).hasDoneOnboarding();
      if (!onboardingDone) {
        getIt<GoRouter>().goAppRoute(AppRoute.onboarding);
        return;
      }

      // Check if user connected if needed

      // Go to home
      getIt<GoRouter>().goAppRoute(AppRoute.home);
    });
    return const Scaffold(
      body: Center(
        child: Text('SplashScreen'),
      ),
    );
  }
}
