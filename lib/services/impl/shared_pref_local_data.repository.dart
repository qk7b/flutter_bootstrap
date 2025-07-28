import 'package:flutter_bootstrap_app/services/local_data.service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsLocalDataService implements LocalDataService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<bool> setOnboardingDone() {
    return _prefs.then((p) => p.setBool('onboardingDone', true));
  }

  @override
  Future<bool> hasDoneOnboarding() async {
    return _prefs.then((p) => p.getBool('onboardingDone') ?? false);
  }
}
