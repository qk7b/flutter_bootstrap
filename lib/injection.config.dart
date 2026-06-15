// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'interactor/app_event_bus.dart' as _i733;
import 'managers/active_entitlements.cubit.dart' as _i762;
import 'managers/app_errors.cubit.dart' as _i853;
import 'managers/app_settings.cubit.dart' as _i767;
import 'managers/current_user.cubit.dart' as _i956;
import 'managers/offerings_cubit.dart' as _i165;
import 'repositories/user.repository.dart' as _i598;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i762.ActiveEntitlementsCubit>(
      () => _i762.ActiveEntitlementsCubit(),
    );
    gh.factory<_i767.AppSettingsCubit>(() => _i767.AppSettingsCubit());
    gh.factory<_i165.OfferingsCubit>(() => _i165.OfferingsCubit());
    gh.lazySingleton<_i733.AppEventBus>(() => _i733.AppEventBus());
    gh.factory<_i853.AppErrorCubit>(
      () => _i853.AppErrorCubit(eventBus: gh<_i733.AppEventBus>()),
    );
    gh.factory<_i956.CurrentUserCubit>(
      () => _i956.CurrentUserCubit(userRepository: gh<_i598.UserRepository>()),
    );
    return this;
  }
}
