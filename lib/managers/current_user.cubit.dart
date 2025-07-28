import 'dart:async';

import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/user.repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentUserCubit extends AsyncValueCubit<User> {
  final UserRepository userRepository;

  CurrentUserCubit({
    required this.userRepository,
  });

  void load() async {
    emitLoading();
    try {
      final user = await userRepository.getCurrentUser();
      emitSuccess(user);
    } catch (e) {
      // No error here but initial value
      emit(AsyncValueWrapper<User>.initial());
    }
  }

  void signInWithGoogle() async {
    emitGuarded(() {
      return userRepository.signInWithSocial(SocialAuthProvider.google);
    });
  }

  Future<void> signInWithApple() async {
    emitGuarded(() {
      return userRepository.signInWithSocial(SocialAuthProvider.apple);
    });
  }

  Future<void> signInWithDiscord() async {
    emitGuarded(() {
      return userRepository.signInWithSocial(SocialAuthProvider.discord);
    });
  }

  Future<void> signOut() async {
    emitLoading();
    try {
      await userRepository.signOut();
      emit(AsyncValueWrapper<User>.initial());
    } catch (e) {
      emitError(e);
    }
  }
}
