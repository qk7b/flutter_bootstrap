import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bootstrap_app/logger.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@lazySingleton
class DioFirebaseAuthInterceptor extends Interceptor {
  final FirebaseAuth auth;

  DioFirebaseAuthInterceptor({required this.auth});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await auth.currentUser?.getIdToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}

@lazySingleton
class DioAppVersionInterceptor extends Interceptor {
  String? appVersion;
  String? buildNumber;

  DioAppVersionInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (appVersion == null || buildNumber == null) {
      try {
        final packageInfo = await PackageInfo.fromPlatform();
        appVersion = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      } catch (e) {
        logger.e('Failed to get package info: $e');
      }
    }
    if (appVersion != null && buildNumber != null) {
      options.headers['X-App-Version'] = appVersion;
      options.headers['X-Build-Number'] = buildNumber;
    }
    super.onRequest(options, handler);
  }
}
