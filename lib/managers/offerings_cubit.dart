import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class OfferingsCubit extends AsyncValueCubit<Offerings> {
  OfferingsCubit() : super();

  void identifyUser(String userId) {
    Purchases.logIn(userId);
  }

  void loadPackages() {
    emitGuarded(() {
      return Purchases.getOfferings();
    });
  }

  void restorePurchases() async {
    Purchases.restorePurchases().then((r) {});
  }

  void buyPackage(Package package) {}
}
