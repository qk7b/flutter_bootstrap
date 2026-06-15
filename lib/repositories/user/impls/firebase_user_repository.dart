import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/repositories/user/user.repository.dart';

class FirebaseUserRepository extends UserRepository {
  @override
  Future<User> anonymous() {
    // TODO: implement anonymous
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAccount() {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<User> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<User> signInWithSocial(SocialAuthProvider provider) {
    // TODO: implement signInWithSocial
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
  
}