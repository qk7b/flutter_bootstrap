import 'dart:async';

import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/user/sources/api_user_data_source.dart';
import 'package:flutter_bootstrap_app/repositories/user/sources/firebase_authentication_source.dart';
import 'package:injectable/injectable.dart';

class CancelAuthException implements Exception {}

/// Supported social authentication providers
enum SocialAuthProvider { apple, google }

@lazySingleton
class UserRepository {
  final FirebaseAuthenticationSource authRepository;
  final ApiUserDataSource userDataRepository;

  final StreamController<User?> _userStreamController =
      StreamController<User?>.broadcast();
  Stream<User?> get userStream => _userStreamController.stream;

  UserRepository({
    required this.authRepository,
    required this.userDataRepository,
  }) {
    authRepository.userStream.listen((userId) {
      if (userId == null) {
        _userStreamController.add(null);
      } else {
        userDataRepository.getCurrentUser().then((user) {
          final updatedUser = user.copyWith(
            isAnonymous: authRepository.isAnonymous,
          );
          _userStreamController.add(updatedUser);
        });
      }
    });
  }

  /// Signs in or signs up a user using a social authentication provider
  /// Returns the signed in User on success
  Future<User> signInWithSocial(SocialAuthProvider provider) {
    return authRepository
        .signInWithSocial(provider)
        .then((userData) {
          return userDataRepository.getCurrentUser();
        })
        .then((user) {
          return user.copyWith(isAnonymous: false);
        });
  }

  /// Anonymous login
  Future<User> anonymous() {
    return authRepository
        .anonymous()
        .then((userId) {
          return userDataRepository.getCurrentUser();
        })
        .then((user) {
          return user.copyWith(isAnonymous: true);
        });
  }

  bool get isAnonymous => authRepository.isAnonymous;

  /// Signs out the current user
  Future<void> signOut() {
    return authRepository.signOut();
  }

  /// Deletes the current user
  Future<void> deleteAccount() async {
    await userDataRepository.deleteUserData();
    return authRepository.deleteAccount();
  }

  Future<void> updateUserProfile({required User user}) async {
    await userDataRepository.updateUserProfile(user: user);
    _userStreamController.add(user);
  }
}
