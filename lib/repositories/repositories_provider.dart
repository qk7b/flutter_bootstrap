import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/impls/no_analytics_repository.dart';
import 'package:flutter_bootstrap_app/repositories/preferences/impls/shared_preferences_repository.dart';
import 'package:flutter_bootstrap_app/repositories/preferences/preferences.repository.dart';
import 'package:flutter_bootstrap_app/repositories/user/impls/firebase_user_repository.dart';
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoriesProvider {
  @lazySingleton
  AnalyticsRepository analyticsRepository() {
    if (kDebugMode) return NoAnalyticsRepository();
    // TODO(Quentin): Analytics service
    throw UnimplementedError();
  }

  @lazySingleton
  PreferencesRepository preferencesRepository() {
    return SharedAndSecurePreferencesRepository();
  }

  @lazySingleton
  UserRepository userRepository(FirebaseAuth firebaseAuth) {
    return FirebaseUserRepository(auth: firebaseAuth);
  }
}
