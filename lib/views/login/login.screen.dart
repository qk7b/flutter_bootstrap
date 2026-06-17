import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/views/login/widgets/social_sign_in_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            GoogleSignInButton(),
            AppleSignInButton(),
            AnonymousSignInButton(),
          ],
        ),
      ),
    );
  }
}
