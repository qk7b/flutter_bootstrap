import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/views/home/home.screen.dart';
import 'package:flutter_bootstrap_app/views/login/login.screen.dart';
import 'package:flutter_bootstrap_app/views/onboarding/onboarding.screen.dart';
import 'package:flutter_bootstrap_app/views/purchases/subscriptions.screen.dart';
import 'package:flutter_bootstrap_app/views/splash/splash.screen.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

enum AppRoute {
  splash,
  onboarding,
  login,
  home,
  purchases,
}

/// Returns the path for the given route
/// Uses [route] The route to get the path for and an optional [id]
/// if needed
String appRoutesPath(AppRoute route, {String? id = ':id'}) => switch (route) {
      AppRoute.splash => '/splash',
      AppRoute.onboarding => '/onboarding',
      AppRoute.login => '/login',
      AppRoute.home => '/',
      AppRoute.purchases => '/purchases',
    };

/// This extension is used to navigate to the app routes
/// It prevens using go and push directy and navigation
/// to the app routes is only made using the [AppRoute] enum
extension NavigationEnum on GoRouter {
  void goAppRoute<T>(AppRoute route, {String? id, Object? extra}) =>
      go(appRoutesPath(route, id: id), extra: extra);

  Future<T?> pushAppRoute<T>(AppRoute route, {String? id, Object? extra}) =>
      push(appRoutesPath(route, id: id), extra: extra);
}

abstract class RouterProvider {
  @singleton
  GoRouter router() => GoRouter(
        initialLocation: appRoutesPath(AppRoute.splash),
        redirect: (context, state) {
          final pageName = state.name;
          if (pageName == appRoutesPath(AppRoute.splash) || pageName == null) {
            return null;
          }
          // TODO(Quentin): Analytics track page
          // ref.read(analyticsServiceProvider).trackPage(pageName);
          return null;
        },
        routes: [
          GoRoute(
            path: appRoutesPath(AppRoute.splash),
            pageBuilder: (context, state) => const MaterialPage(
              child: SplashScreen(),
            ),
          ),
          GoRoute(
            path: appRoutesPath(AppRoute.onboarding),
            pageBuilder: (context, state) => const MaterialPage(
              child: OnboardingScreen(),
            ),
          ),
          GoRoute(
            path: appRoutesPath(AppRoute.login),
            pageBuilder: (context, state) => const MaterialPage(
              child: LoginScreen(),
            ),
          ),
          GoRoute(
            path: appRoutesPath(AppRoute.home),
            pageBuilder: (context, state) => const MaterialPage(
              child: HomeScreen(),
            ),
          ),
          GoRoute(
            path: appRoutesPath(AppRoute.purchases),
            pageBuilder: (context, state) => const MaterialPage(
              child: PurchasesScreen(),
            ),
          ),
        ],
      );
}
