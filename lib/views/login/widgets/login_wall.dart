import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/gen/strings.g.dart';
import 'package:flutter_bootstrap_app/managers/current_user.cubit.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/theme.dart';
import 'package:flutter_bootstrap_app/views/login/widgets/social_sign_in_buttons.dart';
import 'package:flutter_bootstrap_app/views/widgets/tos.widget.dart';

class LoginWall extends StatelessWidget {
  const LoginWall({
    required this.onLoginSuccess,
    this.allowAnonymousSignIn = true,
    super.key,
  });

  final VoidCallback onLoginSuccess;
  final bool allowAnonymousSignIn;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CurrentUserCubit, AsyncValueWrapper<User?>>(
      listener: (context, state) {
        if (state.status == AsyncValueStatus.success) {
          onLoginSuccess.call();
          return;
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.login.loginTitle,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppTheme.spacingMedium),
                Text(
                  context.t.login.loginSubtitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: AppTheme.spacingMedium),
                // TODO: Add hero image or illustration here
              ],
            ),
          ),
          Column(
            spacing: AppTheme.spacingSmall,
            children: [
              const GoogleSignInButton(),
              const AppleSignInButton(),
              if (allowAnonymousSignIn) const AnonymousSignInButton(),
              TosText(intro: context.t.login.termsAgreement),
            ],
          ),
        ],
      ),
    );
  }
}
