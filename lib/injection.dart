import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bootstrap_app/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  // the default method name that will be generated
  preferRelativeImports: true, // default
)
Future<void> configureDependencies() async => getIt.$initGetIt();

@module
abstract class FirebaseProvider {
  @lazySingleton
  FirebaseAuth firebaseAuth() => FirebaseAuth.instance;
}
