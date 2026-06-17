import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/firebase_options.dart';
import 'package:flutter_bootstrap_app/gen/strings.g.dart';
import 'package:flutter_bootstrap_app/injection.dart';
import 'package:flutter_bootstrap_app/logger.dart';
import 'package:flutter_bootstrap_app/managers/app_errors.cubit.dart';
import 'package:flutter_bootstrap_app/managers/app_settings.cubit.dart';
import 'package:flutter_bootstrap_app/managers/current_user.cubit.dart';
import 'package:flutter_bootstrap_app/managers/onboarding_cubit.dart';
import 'package:flutter_bootstrap_app/managers/purchases_cubit.dart';
import 'package:flutter_bootstrap_app/views/home/home.screen.dart';
import 'package:flutter_bootstrap_app/views/login/login.screen.dart';
import 'package:flutter_bootstrap_app/views/onboarding/onboarding.screen.dart';
import 'package:flutter_bootstrap_app/views/paywall/paywall.screen.dart';
import 'package:flutter_bootstrap_app/views/splash/splash.screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:toastification/toastification.dart';

part 'router.dart';


void main() async {
  // Init
  logger.i('Starting main...');
  WidgetsFlutterBinding.ensureInitialized();
  // i18n
  LocaleSettings.useDeviceLocale();
  // Hydratation
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(
            (await getApplicationSupportDirectory()).path,
          ),
  );
  // Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Injection
  await configureDependencies();
  // Payment provider
  await initPaymentProvider();
  // App
  logger.i('Starting app...');
  runApp(TranslationProvider(child: const MyApp()));
}

Future<void> initPaymentProvider() async {
  if (kIsWeb) {
    return;
  }

  /// Init revenuecat
  await Purchases.setLogHandler(
    (level, message) => logger.log(switch (level) {
      LogLevel.verbose => Level.all,
      LogLevel.debug => Level.debug,
      LogLevel.info => Level.info,
      LogLevel.warn => Level.warning,
      LogLevel.error => Level.error,
    }, message),
  );
  final currentPlatform = Platform.operatingSystem;
  PurchasesConfiguration configuration = PurchasesConfiguration(
    switch (currentPlatform) {
      'android' => 'RC_ANDROID_KEY',
      'ios' => 'RC_IOS_KEY',
      'fuchsia' => 'RC_FUCHSIA_KEY',
      'macos' => 'RC_MACOS_KEY',
      'windows' => 'RC_WINDOWS_KEY',
      'web' => 'RC_WEB_KEY',
      'linux' => 'RC_LINUX_KEY',
      _ => 'RC_ANDROID_KEY',
    },
  );
  await Purchases.configure(configuration);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<AppErrorCubit>()),
        BlocProvider.value(value: getIt<AppSettingsCubit>()),
        BlocProvider.value(value: getIt<CurrentUserCubit>()),
        BlocProvider.value(value: getIt<PurchasesCubit>()),
        BlocProvider.value(value: getIt<OnboardingCubit>()),
      ],
      child: Builder(
        builder: (context) {
          return BlocListener<AppErrorCubit, AppError>(
            listener: (context, appError) {
              if (appError == const AppError.none()) return;
              toastification.show(
                context: context,
                title: Text(appError.toString()),
              );
            },
            child: MaterialApp.router(
              locale: TranslationProvider.of(context).flutterLocale,
              supportedLocales: AppLocaleUtils.supportedLocales,
              localizationsDelegates: GlobalMaterialLocalizations.delegates,
              routerConfig: _router,
            ),
          );
        },
      ),
    );
  }
}
