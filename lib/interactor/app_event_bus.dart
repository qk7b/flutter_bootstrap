import 'dart:async';

import 'package:flutter_bootstrap_app/managers/app_errors.cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event_bus.freezed.dart';

@lazySingleton
class AppEventBus {
  final _controller = StreamController<AppEvent>.broadcast();

  Stream<AppEvent> get stream => _controller.stream;

  void addEvent(AppEvent event) => _controller.add(event);
}

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.userLoaded(String userId) = UserLoadedAppEvent;

  const factory AppEvent.premiumStatusChanged(bool isPremium) =
      PremiumLoadedAppEvent;

  const factory AppEvent.error(AppError error) = SomeErrorOccuredAppEvent;
}
