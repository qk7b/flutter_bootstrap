import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';

class NoAnalyticsRepository implements AnalyticsRepository {
  @override
  Future<void> init() {
    return Future.value();
  }

  @override
  Future<void> trackPage(String pageName) {
    return Future.value();
  }

  @override
  Future<void> reset() {
    return Future.value();
  }

  @override
  Future<void> trackOnboardingStepCompleted(
    int stepNumber,
    String stepName, {
    Map<String, dynamic>? additionalProperties,
  }) {
    return Future.value();
  }

  @override
  Future<void> trackPaywallViewed({required String triggerLocation}) {
    return Future.value();
  }

  @override
  Future<void> activateTracking() {
    return Future.value();
  }

  @override
  Future<void> deactivateTracking() {
    return Future.value();
  }

  @override
  Future<bool> isTrackingActive() {
    return Future.value(false);
  }
}
