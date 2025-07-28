abstract class AnalyticsService {
  Future<void> init();

  Future<void> trackPage(String pageName);
}
