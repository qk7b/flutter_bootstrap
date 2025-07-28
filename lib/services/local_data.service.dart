/// This repository is used to store data on the local device
abstract class LocalDataService {
  Future<bool> setOnboardingDone();

  Future<bool> hasDoneOnboarding();
}
