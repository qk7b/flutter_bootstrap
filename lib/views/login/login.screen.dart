import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                // tooltip: context.t.login.login.socials.apple,
                onPressed: () {
                  // TODO sign in with apple
                },
                icon: Assets.icons.icAppleSigninDark.svg(
                  height: 50,
                  width: 50,
                ),
              ),
              IconButton(
                tooltip: context.t.login.login.socials.google,
                onPressed: () {
                  // TODO sign in with google
                },
                icon: Assets.icons.icGoogleSigninDark.svg(
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
