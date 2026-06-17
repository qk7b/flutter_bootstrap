import 'package:flutter_bootstrap_app/repositories/preferences/preferences.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedAndSecurePreferencesRepository implements PreferencesRepository {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
}
