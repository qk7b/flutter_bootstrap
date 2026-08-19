import 'package:flutter_bootstrap_app/injection.dart';
import 'package:flutter_bootstrap_app/repositories/preferences/preferences.repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _lastAuthUserIdKey = 'last_auth_user_id';

Future<void> syncLocalCacheWithUserId(String? userId) async {
  final storage = getIt<FlutterSecureStorage>();
  final previousUserId = await storage.read(key: _lastAuthUserIdKey);
  if (previousUserId == userId) {
    return;
  }

  // Clear local data if the user has changed
  await getIt<PreferencesRepository>().clearLocalData();

  if (userId == null) {
    await storage.delete(key: _lastAuthUserIdKey);
  } else {
    await storage.write(key: _lastAuthUserIdKey, value: userId);
  }
}
