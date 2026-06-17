abstract class AnalyticsRepository {
  Future<void> init();

  Future<void> trackPage(String pageName);
}