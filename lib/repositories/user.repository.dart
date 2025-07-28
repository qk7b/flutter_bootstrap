import 'package:flutter_bootstrap_app/models/user.model.dart';

class CancelAuthException implements Exception {}

/// Supported social authentication providers
enum SocialAuthProvider {
  apple,
  google,
  discord,
}

abstract class UserRepository {
  /// Signs in or signs up a user using a social authentication provider
  /// Returns the signed in User on success
  Future<User> signInWithSocial(SocialAuthProvider provider);

  /// Signs out the current user
  Future<void> signOut();

  /// Returns the current user if signed in, null otherwise
  Future<User> getCurrentUser();

  /// Deletes the current user
  Future<void> deleteAccount();
}
