import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/gen/assets.gen.dart';
import 'package:flutter_bootstrap_app/managers/current_user.cubit.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.theme.colorScheme.brightness == Brightness.dark;
    final icon =
        (isDarkTheme
                ? Assets.icons.icGoogleSigninDark
                : Assets.icons.icGoogleSigninLight)
            .svg(height: 24, width: 24);
    return _SocialSignInButton(
      icon: icon,
      label: context.t.login.socials.google,
      onPressed: () => context.read<CurrentUserCubit>().signInWithGoogle(),
    );
  }
}

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.theme.colorScheme.brightness == Brightness.dark;
    final icon =
        (isDarkTheme
                ? Assets.icons.icAppleSigninDark
                : Assets.icons.icAppleSigninLight)
            .svg(height: 24, width: 24);
    return _SocialSignInButton(
      icon: icon,
      label: context.t.login.socials.apple,
      onPressed: () => context.read<CurrentUserCubit>().signInWithApple(),
    );
  }
}

class AnonymousSignInButton extends StatelessWidget {
  const AnonymousSignInButton({super.key});

  @override
  Widget build(BuildContext context) => _SocialSignInButton(
    icon: const Icon(Icons.no_accounts_outlined),
    label: context.t.login.anonymous,
    onPressed: () => context.read<CurrentUserCubit>().continueAnonymous(),
  );
}

class _SocialSignInButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  const _SocialSignInButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.theme.colorScheme.brightness == Brightness.dark;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: isDarkTheme ? Colors.black : Colors.white,
          foregroundColor: isDarkTheme ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: isDarkTheme ? Colors.white : Colors.black,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        ),
        icon: icon,
        label: Text(label, style: const TextStyle(fontSize: 14)),
        onPressed: onPressed,
      ),
    );
  }
}
