import 'package:flutter_bootstrap_app/services/analytics.service.dart';

class NothingAnalyticsService implements AnalyticsService {
  @override
  Future<void> init() async {}

  @override
  Future<void> trackPage(String pageName) async {}
}
