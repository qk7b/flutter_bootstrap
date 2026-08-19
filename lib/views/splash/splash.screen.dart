import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/gen/strings.g.dart';
import 'package:flutter_bootstrap_app/main.dart';
import 'package:flutter_bootstrap_app/managers/current_user.cubit.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CurrentUserCubit, AsyncValueWrapper<User?>>(
        listener: (_, state) {
          if (state.status == AsyncValueStatus.initial) return;
          if (state.value == null) {
            context.goAppRoute(AppRoute.onboardingStep1);
            return;
          }

          // Go to home
          context.goAppRoute(AppRoute.home);
        },
        child: Center(child: Text(context.t.common.loading)),
      ),
    );
  }
}
