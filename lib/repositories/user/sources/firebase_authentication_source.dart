import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseAuthenticationSource {
  FirebaseAuthenticationSource({required this.auth});

  final firebase.FirebaseAuth auth;

  Future<String> anonymous() async {
    final userCredential = await auth.signInAnonymously();
    if (userCredential.user == null) {
      throw Exception('Anonymous sign in failed');
    }
    return userCredential.user!.uid;
  }

  Future<void> deleteAccount() async {
    await auth.currentUser?.delete();
  }

  bool get isAnonymous => auth.currentUser?.isAnonymous ?? false;

  Stream<String?> get userStream =>
      auth.authStateChanges().asyncMap((fbUser) async {
        if (fbUser == null) return null;
        return fbUser.uid;
      });

  Future<(String, String)> signInWithSocial(SocialAuthProvider provider) async {
    return switch (provider) {
      SocialAuthProvider.apple => _signInWithApple(),
      SocialAuthProvider.google => _signInWithGoogle(),
    };
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
      await GoogleSignIn.instance.signOut();
    } catch (_) {}
  }

  Future<(String, String)> _signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount googleUser = await GoogleSignIn.instance
          .authenticate();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      // Create a new credential
      final credential = firebase.GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      firebase.UserCredential userCredentials;
      if (auth.currentUser != null) {
        try {
          // Try linking the new credential to the current anonymous user
          userCredentials = await auth.currentUser!.linkWithCredential(
            credential,
          );
        } on firebase.FirebaseAuthException catch (e) {
          if (e.code == 'credential-already-in-use') {
            // RETURNING USER DETECTED: Abort linking, just sign them into their old account
            userCredentials = await auth.signInWithCredential(credential);
          } else {
            rethrow; // Catch other Firebase errors elsewhere
          }
        }
      } else {
        // No user logged in at all, standard sign-in
        userCredentials = await auth.signInWithCredential(credential);
      }

      final user = userCredentials.user;
      if (user == null) throw Exception('Error logging in');
      return (user.uid, user.displayName ?? '');
    } catch (e) {
      if (e is firebase.FirebaseAuthException &&
          e.code == 'account-exists-with-different-credential') {
        throw CancelAuthException();
      }
      rethrow;
    }
  }

  Future<(String, String)> _signInWithApple() async {
    final appleProvider = firebase.AppleAuthProvider();
    appleProvider.addScope('name');
    // Check if the user is already signed in (anonymous)
    firebase.UserCredential userCredentials;

    if (auth.currentUser != null) {
      try {
        // Try linking the provider to the current anonymous user
        userCredentials = await auth.currentUser!.linkWithProvider(
          appleProvider,
        );
      } on firebase.FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use') {
          // RETURNING USER DETECTED: Sign them in normally to recover their old account
          userCredentials = await auth.signInWithProvider(appleProvider);
        } else {
          rethrow;
        }
      }
    } else {
      userCredentials = await auth.signInWithProvider(appleProvider);
    }
    final user = userCredentials.user;
    if (user == null) throw Exception('Error logging in');

    final String? displayName = user.displayName;
    return (user.uid, displayName ?? '');
  }
}
