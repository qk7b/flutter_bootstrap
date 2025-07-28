import 'package:appwrite/appwrite.dart';
import 'package:appwrite/enums.dart';
import 'package:appwrite/models.dart' as a;
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/user.repository.dart';

class AppWriteUserRepository implements UserRepository {
  final Account account;

  AppWriteUserRepository({
    required Client client,
  }) : account = Account(client);

  User _fromUser(a.User u) {
    return User(
      id: u.$id,
    );
  }

  @override
  Future<User> getCurrentUser() {
    return account.get().then(_fromUser);
  }

  @override
  Future<void> signOut() {
    return account.deleteSession(sessionId: 'current');
  }

  @override
  Future<User> signInWithSocial(SocialAuthProvider provider) {
    return account
        .createOAuth2Session(
          provider: switch (provider) {
            SocialAuthProvider.apple => OAuthProvider.apple,
            SocialAuthProvider.google => OAuthProvider.google,
            SocialAuthProvider.discord => OAuthProvider.discord,
          },
          scopes: ['identify'],
        )
        .then((s) => account.getSession(sessionId: 'current'))
        .then((s) => account.get())
        .then(_fromUser);
  }

  @override
  Future<void> deleteAccount() {
    // TODO: delete account not just session
    return account.deleteSession(sessionId: 'current').then((value) => true);
  }
}
