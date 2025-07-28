import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/injection.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:flutter_bootstrap_app/services/local_data.service.dart';
import 'package:flutter_bootstrap_app/views/onboarding/widgets/last_onboarding.widget.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Widget> _tabs = [];

  /// Triggerd when the onboarding is completed
  void onFinishOnboarding() async {
    getIt<LocalDataService>().setOnboardingDone().then((_) {
      getIt<GoRouter>().goAppRoute(AppRoute.splash);
    });
  }

  @override
  void initState() {
    super.initState();

    /// Add your widget tabs here
    _tabs = [
      LastOnboarding(
        onEndTap: onFinishOnboarding,
      ),
    ];

    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
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
              child: TabBarView(
                controller: _tabController,
                children: _tabs,
              ),
            ),
            const SizedBox(height: 4),
            TabPageSelector(
              controller: _tabController,
              indicatorSize: 6,
            ),
          ],
        ),
      ),
    );
  }
}
