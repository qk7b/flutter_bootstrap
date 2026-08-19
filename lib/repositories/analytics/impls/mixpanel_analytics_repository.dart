import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:flutter_bootstrap_app/repositories/preferences/impls/isar_preferences_repository.dart';
import 'package:isar_community/isar.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelAnalyticsRepository implements AnalyticsRepository {
  Mixpanel? _mixpanel;

  MixpanelAnalyticsRepository({required this.isar})
    : preferencesCollection = isar.collection<IsarPreferences>();

  final Isar isar;
  final IsarCollection<IsarPreferences> preferencesCollection;

  bool isActive = true;

  @override
  Future<void> init() async {
    _mixpanel = await Mixpanel.init(
      'MIXPANEL_TOKEN',
      trackAutomaticEvents: true,
    );
    isActive = await isTrackingActive();
  }

  @override
  Future<void> reset() async {
    // When user disconnects, we reset the Mixpanel instance to clear any user-specific data.
    await _mixpanel?.reset();
    await activateTracking();
  }

  Future<void> _trackEvent(
    String eventName, {
    Map<String, dynamic>? properties,
  }) async {
    if (!isActive) return;
    _mixpanel?.track(eventName, properties: properties);
  }

  @override
  Future<void> trackPage(String pageName) async {
    await _trackEvent('Page Viewed', properties: {'page_name': pageName});
  }

  // Métier
  @override
  Future<void> trackOnboardingStepCompleted(
    int stepNumber,
    String stepName, {
    Map<String, dynamic>? additionalProperties,
  }) async {
    await _trackEvent(
      'Onboarding Step Completed',
      properties: {
        ...?additionalProperties,
        'step_number': stepNumber,
        'step_name': stepName,
      },
    );
  }

  @override
  Future<void> trackPaywallViewed({required String triggerLocation}) async {
    await _trackEvent(
      'Paywall Viewed',
      properties: {'trigger_location': triggerLocation},
    );
  }

  @override
  Future<void> activateTracking() {
    isActive = true;
    return isar.writeTxn(() async {
      final actualPreferences = await preferencesCollection.where().findFirst();
      final newPreferences = actualPreferences ?? IsarPreferences();
      newPreferences.isTrackingDisabled = false;
      await preferencesCollection.put(newPreferences);
    });
  }

  @override
  Future<void> deactivateTracking() {
    isActive = false;
    return isar.writeTxn(() async {
      final actualPreferences = await preferencesCollection.where().findFirst();
      final newPreferences = actualPreferences ?? IsarPreferences();
      newPreferences.isTrackingDisabled = true;
      await preferencesCollection.put(newPreferences);
    });
  }

  @override
  Future<bool> isTrackingActive() {
    return preferencesCollection.where().findFirst().then((r) {
      if (r == null) return true;
      return r.isTrackingDisabled == false;
    });
  }
}
