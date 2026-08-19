part of 'main.dart';

enum AppRoute { splash, onboardingStep1, home, purchases, settings, login }

/// Returns the path for the given route
/// Uses [route] The route to get the path for and an optional [id]
/// if needed
String appRoutesPath(AppRoute route, {String? id = ':id'}) => switch (route) {
  AppRoute.splash => '/splash',
  AppRoute.onboardingStep1 => '/onboarding/step-1',
  AppRoute.settings => '/settings',
  AppRoute.home => '/',
  AppRoute.purchases => '/purchases',
  AppRoute.login => '/login',
};

/// This extension is used to navigate to the app routes
/// It prevens using go and push directy and navigation
/// to the app routes is only made using the [AppRoute] enum
extension NavigationEnum on BuildContext {
  void goAppRoute<T>(AppRoute route, {String? id, Object? extra}) =>
      go(appRoutesPath(route, id: id), extra: extra);

  Future<T?> pushAppRoute<T>(AppRoute route, {String? id, Object? extra}) {
    return push(appRoutesPath(route, id: id), extra: extra);
  }

  void replaceAppRoute<T>(AppRoute route, {String? id, Object? extra}) {
    return pushReplacement(appRoutesPath(route, id: id), extra: extra);
  }
}

final rootNavigatorKey = GlobalKey<NavigatorState>();
final createTripNavigatorKey = GlobalKey<NavigatorState>();
final onboardingNavigatorKey = GlobalKey<NavigatorState>();

final _router = GoRouter(
  initialLocation: appRoutesPath(AppRoute.splash),
  redirect: (context, state) {
    final pageName = state.name;
    if (pageName == appRoutesPath(AppRoute.splash) || pageName == null) {
      return null;
    }
    return null;
  },
  observers: [
    _AnalyticsNavigatorObserver(
      analyticsRepository: getIt<AnalyticsRepository>(),
    ),
  ],
  routes: [
    GoRoute(
      path: appRoutesPath(AppRoute.splash),
      name: appRoutesPath(AppRoute.splash),
      pageBuilder: (context, state) =>
          const MaterialPage(child: SplashScreen()),
    ),
    ShellRoute(
      navigatorKey: GlobalKey(),
      builder: (context, state, child) {
        // 1. Get the current active path
        final location = state.uri.path;

        // 2. Calculate the step based on the path
        final currentStep = switch (location.substring(
          location.lastIndexOf('/'),
        )) {
          '/step-1' => 1,
          _ => 0,
        };
        return BlocProvider(
          create: (_) => getIt<OnboardingCubit>(),
          child: Builder(
            builder: (context) {
              return OnboardingScreen(
                step: currentStep,
                totalSteps: 6,
                child: child,
              );
            },
          ),
        );
      },
      routes: [
        GoRoute(
          path: appRoutesPath(AppRoute.onboardingStep1),
          name: appRoutesPath(AppRoute.onboardingStep1),
          pageBuilder: (context, state) =>
              const MaterialPage(child: OnboardingStep1()),
        ),
      ],
    ),
    GoRoute(
      path: appRoutesPath(AppRoute.login),
      name: appRoutesPath(AppRoute.login),
      pageBuilder: (context, state) =>
          const MaterialPage(child: LoginWallScreen()),
    ),
    GoRoute(
      path: appRoutesPath(AppRoute.home),
      name: appRoutesPath(AppRoute.home),
      pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
    ),
    GoRoute(
      path: appRoutesPath(AppRoute.settings),
      name: appRoutesPath(AppRoute.settings),
      pageBuilder: (context, _) => const MaterialPage(child: SettingsScreen()),
    ),
    GoRoute(
      path: appRoutesPath(AppRoute.purchases),
      name: appRoutesPath(AppRoute.purchases),
      pageBuilder: (context, state) =>
          const MaterialPage(child: PayWallScreen()),
    ),
  ],
);

class _AnalyticsNavigatorObserver extends NavigatorObserver {
  final AnalyticsRepository analyticsRepository;

  _AnalyticsNavigatorObserver({required this.analyticsRepository});

  void _sendScreenView(Route<dynamic>? route) {
    if (route != null && route.settings.name != null) {
      final screenName = route.settings.name!;
      // On appelle automatiquement notre repository
      analyticsRepository.trackPage(screenName);
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _sendScreenView(route);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _sendScreenView(newRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    // Optionnel : si on revient sur l'écran précédent, on peut ré-émettre la vue
    _sendScreenView(previousRoute);
  }
}
