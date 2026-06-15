import 'dart:async';

import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentUserCubit extends AsyncValueCubit<User> {
  final UserRepository userRepository;
  StreamSubscription<User?>? _userSubscription;

  CurrentUserCubit({required this.userRepository}) {
    _userSubscription = userRepository.userStream.listen((user) {
      if (user != null) {
        emitSuccess(user);
      } else {
        emit(AsyncValueWrapper<User>.initial());
      }
    });
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
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

  Future<void> continueAnonymous() async {
    emitGuarded(() {
      return userRepository.anonymous();
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
