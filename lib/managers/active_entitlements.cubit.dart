import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class ActiveEntitlementsCubit extends Cubit<List<EntitlementInfo>> {
  ActiveEntitlementsCubit() : super([]);

  void identifyUser(String userId) {
    Purchases.logIn(userId);
  }

  void restorePurchases() async {
    Purchases.restorePurchases().then((r) {
      emit(r.entitlements.active.values.toList());
    });
  }

  void buyPackage(Package package) {
    Purchases.purchasePackage(package).then((r) {
      emit(r.customerInfo.entitlements.active.values.toList());
    });
  }
}
