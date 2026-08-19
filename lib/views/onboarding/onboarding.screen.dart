import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/injection.dart';
import 'package:flutter_bootstrap_app/main.dart';
import 'package:flutter_bootstrap_app/managers/onboarding_cubit.dart';
import 'package:flutter_bootstrap_app/repositories/analytics/analytics.repository.dart';
import 'package:flutter_bootstrap_app/theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    required this.step,
    required this.totalSteps,
    required this.child,
    super.key,
  });

  final int totalSteps;
  final int step;
  final Widget child;

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _stepsProgressController;
  late Animation<double> _stepsProgressAnimation;

  @override
  void initState() {
    _stepsProgressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    final initialValue = widget.step / widget.totalSteps;
    _stepsProgressAnimation = Tween<double>(
      begin: initialValue,
      end: initialValue,
    ).animate(_stepsProgressController);
    super.initState();
  }

  @override
  void didUpdateWidget(OnboardingScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.step != widget.step) {
      _stepsProgressAnimation = Tween<double>(
        begin: _stepsProgressAnimation.value,
        end: widget.step / widget.totalSteps,
      ).animate(_stepsProgressController);
      _stepsProgressController.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _stepsProgressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (context, state) {
        if (state.finishOnboardingStatus.status == AsyncValueStatus.success) {
          context.goAppRoute(AppRoute.home);
          getIt<AnalyticsRepository>().trackPaywallViewed(
            triggerLocation: 'onboarding_finish',
          );
          context.pushAppRoute(AppRoute.purchases);
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: AnimatedBuilder(
              animation: _stepsProgressAnimation,
              builder: (context, child) {
                return LinearProgressIndicator(
                  value: _stepsProgressAnimation.value,
                );
              },
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.spacingLarge,
              vertical: AppTheme.spacingMedium,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.t.onboarding
                      .step(context: widget.step, total: widget.totalSteps)
                      .toUpperCase(),
                  style: context.theme.textTheme.labelLarge?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: AppTheme.spacingMedium),
                Expanded(child: widget.child),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
