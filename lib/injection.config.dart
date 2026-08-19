// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar_community/isar.dart' as _i214;

import 'dio_utils.dart' as _i740;
import 'injection.dart' as _i464;
import 'interactor/app_event_bus.dart' as _i733;
import 'managers/app_errors.cubit.dart' as _i853;
import 'managers/app_settings.cubit.dart' as _i767;
import 'managers/current_user.cubit.dart' as _i956;
import 'managers/onboarding_cubit.dart' as _i118;
import 'managers/purchases_cubit.dart' as _i226;
import 'repositories/analytics/analytics.repository.dart' as _i1054;
import 'repositories/preferences/impls/isar_preferences_repository.dart'
    as _i1038;
import 'repositories/preferences/preferences.repository.dart' as _i931;
import 'repositories/user/sources/api_user_data_source.dart' as _i302;
import 'repositories/user/sources/firebase_authentication_source.dart' as _i69;
import 'repositories/user/user.repository.dart' as _i947;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseProvider = _$FirebaseProvider();
    final isarProvider = _$IsarProvider();
    final preferencesProvider = _$PreferencesProvider();
    final repositoriesProvider = _$RepositoriesProvider();
    gh.lazySingleton<_i740.DioAppVersionInterceptor>(
      () => _i740.DioAppVersionInterceptor(),
    );
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseProvider.firebaseAuth());
    await gh.lazySingletonAsync<_i214.Isar>(
      () => isarProvider.isar(),
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => preferencesProvider.secureStorage,
    );
    await gh.lazySingletonAsync<_i1054.AnalyticsRepository>(
      () => repositoriesProvider.analyticsRepository(),
      preResolve: true,
    );
    gh.lazySingleton<_i733.AppEventBus>(() => _i733.AppEventBus());
    gh.factory<_i853.AppErrorCubit>(
      () => _i853.AppErrorCubit(eventBus: gh<_i733.AppEventBus>()),
    );
    gh.singleton<_i226.PurchasesCubit>(
      () => _i226.PurchasesCubit(eventBus: gh<_i733.AppEventBus>()),
    );
    gh.lazySingleton<_i931.PreferencesRepository>(
      () => _i1038.IsarPreferencesRepository(isar: gh<_i214.Isar>()),
    );
    gh.lazySingleton<_i740.DioFirebaseAuthInterceptor>(
      () => _i740.DioFirebaseAuthInterceptor(auth: gh<_i59.FirebaseAuth>()),
    );
    gh.lazySingleton<_i69.FirebaseAuthenticationSource>(
      () => _i69.FirebaseAuthenticationSource(auth: gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i767.AppSettingsCubit>(
      () => _i767.AppSettingsCubit(
        analyticsRepository: gh<_i1054.AnalyticsRepository>(),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => repositoriesProvider.dio(
        authInterceptor: gh<_i740.DioFirebaseAuthInterceptor>(),
        appVersionInterceptor: gh<_i740.DioAppVersionInterceptor>(),
      ),
    );
    gh.lazySingleton<_i302.ApiUserDataSource>(
      () => repositoriesProvider.apiUserDataSource(dio: gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i947.UserRepository>(
      () => _i947.UserRepository(
        authRepository: gh<_i69.FirebaseAuthenticationSource>(),
        userDataRepository: gh<_i302.ApiUserDataSource>(),
      ),
    );
    gh.factory<_i118.OnboardingCubit>(
      () => _i118.OnboardingCubit(
        appEventBus: gh<_i733.AppEventBus>(),
        analyticsRepository: gh<_i1054.AnalyticsRepository>(),
        userRepository: gh<_i947.UserRepository>(),
      ),
    );
    gh.lazySingleton<_i956.CurrentUserCubit>(
      () => _i956.CurrentUserCubit(
        eventBus: gh<_i733.AppEventBus>(),
        analyticsRepository: gh<_i1054.AnalyticsRepository>(),
        userRepository: gh<_i947.UserRepository>(),
        preferencesRepository: gh<_i931.PreferencesRepository>(),
      ),
    );
    return this;
  }
}

class _$FirebaseProvider extends _i464.FirebaseProvider {}

class _$IsarProvider extends _i464.IsarProvider {}

class _$PreferencesProvider extends _i464.PreferencesProvider {}

class _$RepositoriesProvider extends _i464.RepositoriesProvider {}
