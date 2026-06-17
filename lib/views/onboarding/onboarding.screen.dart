import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/main.dart';
import 'package:flutter_bootstrap_app/managers/onboarding_cubit.dart';
import 'package:flutter_bootstrap_app/views/onboarding/widgets/last_onboarding.widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingCubit, OnboardingState>(
      listener: (_, state) {
        if (state.hasOnboarded) {
          context.goAppRoute(AppRoute.login);
          return;
        }
      },
      child: const _OnboardingScreenContent(),
    );
  }
}

class _OnboardingScreenContent extends StatefulWidget {
  const _OnboardingScreenContent();

  @override
  State<_OnboardingScreenContent> createState() =>
      _OnboardingScreenContentState();
}

class _OnboardingScreenContentState extends State<_OnboardingScreenContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Widget> _tabs = [];

  /// Triggerd when the onboarding is completed
  void onFinishOnboarding() async {
    context.read<OnboardingCubit>().setOnboardingDone();
  }

  @override
  void initState() {
    super.initState();

    /// Add your widget tabs here
    _tabs = [LastOnboarding(onEndTap: onFinishOnboarding)];

    _tabController = TabController(length: _tabs.length, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_tabs.isEmpty) {
        onFinishOnboarding();
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(controller: _tabController, children: _tabs),
            ),
            const SizedBox(height: 4),
            TabPageSelector(controller: _tabController, indicatorSize: 6),
          ],
        ),
      ),
    );
  }
}
