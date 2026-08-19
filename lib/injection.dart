import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bootstrap_app/dio_utils.dart';
import 'package:flutter_bootstrap_app/injection.config.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/impls/mixpanel_analytics_repository.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/impls/no_analytics_repository.dart';
import 'package:flutter_bootstrap_app/repositories/preferences/impls/isar_preferences_repository.dart';
import 'package:flutter_bootstrap_app/repositories/user/sources/api_user_data_source.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

const _shouldUseLocalApi = bool.fromEnvironment(
  'USE_LOCAL_API',
  defaultValue: false,
);

@InjectableInit(
  initializerName: r'$initGetIt',
  // the default method name that will be generated
  preferRelativeImports: true, // default
)
Future<void> configureDependencies() async => getIt.$initGetIt();

@module
abstract class FirebaseProvider {
  @lazySingleton
  FirebaseAuth firebaseAuth() => FirebaseAuth.instance;
}

@module
abstract class IsarProvider {
  @lazySingleton
  @preResolve
  Future<Isar> isar() async {
    final dbDir = await getApplicationDocumentsDirectory();
    return Isar.open([IsarPreferencesSchema], directory: dbDir.path);
  }
}

@module
abstract class PreferencesProvider {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}

@module
abstract class RepositoriesProvider {
  @lazySingleton
  @preResolve
  Future<AnalyticsRepository> analyticsRepository() async {
    if (kDebugMode) return NoAnalyticsRepository();
    final mixPanelRepo = MixpanelAnalyticsRepository(isar: getIt<Isar>());
    await mixPanelRepo.init();
    return mixPanelRepo;
  }

  @lazySingleton
  Dio dio({
    required DioFirebaseAuthInterceptor authInterceptor,
    required DioAppVersionInterceptor appVersionInterceptor,
  }) {
    final Dio dio = Dio();
    dio.options.baseUrl = _shouldUseLocalApi
        ? 'http://127.0.0.1:3000/r/'
        : 'https://api.copack.app/r/';
    dio.interceptors.add(authInterceptor);
    dio.interceptors.add(appVersionInterceptor);
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ),
    );
    return dio;
  }

  @lazySingleton
  ApiUserDataSource apiUserDataSource({required Dio dio}) {
    return ApiUserDataSource(dio);
  }
}
