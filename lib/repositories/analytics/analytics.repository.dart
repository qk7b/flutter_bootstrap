abstract class AnalyticsRepository {
  Future<void> init();

  Future<void> activateTracking();
  Future<void> deactivateTracking();

  Future<bool> isTrackingActive();

  Future<void> trackPage(String pageName);

  Future<void> trackPaywallViewed({required String triggerLocation});

  Future<void> trackOnboardingStepCompleted(
    int stepNumber,
    String stepName, {
    Map<String, dynamic>? additionalProperties,
  });

  Future<void> reset();
}
