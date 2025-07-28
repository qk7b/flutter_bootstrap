import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';

extension PremiumLoadedEventBus on AppEventBus {
  void onPremiumLoaded(bool isPremium) =>
      addEvent(AppEvent.premiumStatusChanged(isPremium));
}
