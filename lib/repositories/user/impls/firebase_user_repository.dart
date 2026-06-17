import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseUserRepository extends UserRepository {
  FirebaseUserRepository({required this.auth});

  final firebase.FirebaseAuth auth;

  @override
  Future<User> anonymous() async {
    final userCredential = await auth.signInAnonymously();
    if (userCredential.user == null) {
      throw Exception('Anonymous sign in failed');
    }
    return _mapFirebaseUser(userCredential.user!);
  }

  @override
  Future<void> deleteAccount() async {
    await auth.currentUser?.delete();
  }

  @override
  Stream<User?> get userStream => auth.authStateChanges().map((fbUser) {
    if (fbUser == null) return null;
    return _mapFirebaseUser(fbUser);
  });

  @override
  Future<User> signInWithSocial(SocialAuthProvider provider) async {
    return switch (provider) {
      SocialAuthProvider.apple => _signInWithApple(),
      SocialAuthProvider.google => _signInWithGoogle(),
    };
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
    try {
      await GoogleSignIn.instance.signOut();
    } catch (_) {}
  }

  Future<User> _signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn.instance
        .authenticate();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    // Create a new credential
    final credential = firebase.GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    // Check if the user is already signed in (anonymous)
    final userCredentials = await ((auth.currentUser != null)
        ? auth.currentUser!.linkWithCredential(credential)
        : auth.signInWithCredential(credential));

    final user = userCredentials.user;
    if (user == null) throw Exception('Error logging in');
    return _mapFirebaseUser(user);
  }

  Future<User> _signInWithApple() async {
    final appleProvider = firebase.AppleAuthProvider();
    // Check if the user is already signed in (anonymous)
    final userCredentials = await ((auth.currentUser != null)
        ? auth.currentUser!.linkWithProvider(appleProvider)
        : auth.signInWithProvider(appleProvider));
    final user = userCredentials.user;
    if (user == null) throw Exception('Error logging in');
    return _mapFirebaseUser(user);
  }

  User _mapFirebaseUser(firebase.User firebaseUser) =>
      User(id: firebaseUser.uid);
}
