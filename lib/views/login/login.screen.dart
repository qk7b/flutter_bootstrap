import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/theme.dart';
import 'package:flutter_bootstrap_app/views/login/widgets/login_wall.dart';
import 'package:go_router/go_router.dart';

class LoginWallScreen extends StatelessWidget {
  const LoginWallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTheme.spacingMedium),
          child: LoginWall(
            onLoginSuccess: () => context.pop(true),
            allowAnonymousSignIn: false,
          ),
        ),
      ),
    );
  }
}
