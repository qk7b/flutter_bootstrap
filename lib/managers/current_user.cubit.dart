import 'dart:async';

import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter_bootstrap_app/interactor/app_event_bus.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:flutter_bootstrap_app/repositories/preferences/preferences.repository.dart';
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';
import 'package:flutter_bootstrap_app/repositories/user/user_local_cache_sync.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CurrentUserCubit extends AsyncValueCubit<User?> {
  CurrentUserCubit({
    required this.eventBus,
    required this.analyticsRepository,
    required this.userRepository,
    required this.preferencesRepository,
  }) {
    _userSubscription = userRepository.userStream.listen((user) async {
      try {
        await syncLocalCacheWithUserId(user?.id);
        if (user != null) {
          eventBus.addEvent(AppEvent.userLoaded(user));
          emitSuccess(user);
        } else {
          emit(AsyncValueWrapper<User?>.success(null));
        }
      } catch (e) {
        emitError(e);
      }
    });
  }

  final AnalyticsRepository analyticsRepository;
  final PreferencesRepository preferencesRepository;
  final UserRepository userRepository;
  final AppEventBus eventBus;
  StreamSubscription<User?>? _userSubscription;

  bool get isAnonymous => userRepository.isAnonymous;

  void signInWithGoogle() => _socialSignin(SocialAuthProvider.google);

  void signInWithApple() => _socialSignin(SocialAuthProvider.apple);

  void _socialSignin(SocialAuthProvider provider) {
    emitGuarded(() async {
      final user = await userRepository.signInWithSocial(provider);
      await syncLocalCacheWithUserId(user.id);
      eventBus.addEvent(AppEvent.userLoaded(user));
      return user;
    });
  }

  void continueAnonymous() {
    emitGuarded(() async {
      final user = await userRepository.anonymous();
      await syncLocalCacheWithUserId(user.id);
      eventBus.addEvent(AppEvent.userLoaded(user));
      return user;
    });
  }

  Future<void> signOut() async {
    emitLoading();
    try {
      await _clearLocalData();
      await userRepository.signOut();
      await syncLocalCacheWithUserId(null);
      await analyticsRepository.reset();
      emit(AsyncValueWrapper<User>.initial());
    } catch (e) {
      emitError(e);
    }
  }

  Future<void> _clearLocalData() async {
    await preferencesRepository.clearLocalData();
  }

  Future<void> deleteMyAccount() async {
    // Delete all the data
    await userRepository.deleteAccount();
    return signOut();
  }

  @override
  Future<void> close() async {
    await _userSubscription?.cancel();
    return super.close();
  }
}
