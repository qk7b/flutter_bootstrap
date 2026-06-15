import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/gen/assets.gen.dart';
import 'package:flutter_bootstrap_app/managers/current_user.cubit.dart';

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
                tooltip: context.t.login.socials.apple,
                onPressed: () {
                  context.read<CurrentUserCubit>().signInWithApple();
                },
                icon: Assets.icons.icAppleSigninDark.svg(height: 50, width: 50),
              ),
              IconButton(
                tooltip: context.t.login.socials.google,
                onPressed: () {
                  context.read<CurrentUserCubit>().signInWithGoogle();
                },
                icon: Assets.icons.icGoogleSigninDark.svg(
                  height: 50,
                  width: 50,
                ),
              ),
              IconButton(
                tooltip: context.t.login.anonymous,
                onPressed: () {
                  context.read<CurrentUserCubit>().continueAnonymous();
                },
                icon: Assets.icons.icAppleSigninDark.svg(height: 50, width: 50),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
