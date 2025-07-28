import 'package:flutter_bootstrap_app/services/analytics.service.dart';
import 'package:flutter_bootstrap_app/services/impl/nothing_analytics.service.dart';
import 'package:flutter_bootstrap_app/services/impl/shared_pref_local_data.repository.dart';
import 'package:flutter_bootstrap_app/services/local_data.service.dart';
import 'package:injectable/injectable.dart';

abstract class AppServiceProvider {
  @singleton
  AnalyticsService analyticsService() => NothingAnalyticsService();

  @singleton
  LocalDataService localDataService() => SharedPrefsLocalDataService();
}
