import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';

class NoAnalyticsRepository implements AnalyticsRepository {
  @override
  Future<void> init() {
    return Future.value();
  }

  @override
  Future<void> trackPage(String pageName) {
    return Future.value();
  }
}
