import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/gen/strings.g.dart';
import 'package:flutter_bootstrap_app/main.dart';
import 'package:flutter_bootstrap_app/managers/onboarding_cubit.dart';
import 'package:flutter_bootstrap_app/theme.dart';
import 'package:flutter_bootstrap_app/views/widgets/app_buttons.widget.dart';

class OnboardingStep1 extends StatelessWidget {
  const OnboardingStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.onboarding.step1.title,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppTheme.spacingMedium),
                Text(
                  context.t.onboarding.step1.subtitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: AppTheme.spacingLarge),
                // TODO: Add hero image or illustration here
              ],
            ),
          ),
        ),
        PrimaryButton(
          heroTag: 'onboarding_step_button',
          onTap: () {
            context.read<OnboardingCubit>().setStepCompleted(1, 'welcome');
            context.goAppRoute(AppRoute.home);
          },
          child: Text(context.t.common.continueLabel),
        ),
      ],
    );
  }
}
