import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';

extension UserLoadedEventBus on AppEventBus {
  void onUserLoaded(User user) => addEvent(AppEvent.userLoaded(user.id));
}
