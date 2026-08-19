import 'package:bloc_wrapped_values/bloc_wrapped_values.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide ThemeMode;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/main.dart';
import 'package:flutter_bootstrap_app/managers/app_settings.cubit.dart';
import 'package:flutter_bootstrap_app/managers/current_user.cubit.dart';
import 'package:flutter_bootstrap_app/managers/purchases_cubit.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:flutter_bootstrap_app/theme.dart';
import 'package:flutter_bootstrap_app/utils.dart';
import 'package:flutter_bootstrap_app/views/settings/widgets/settings_section.widget.dart';
import 'package:flutter_bootstrap_app/views/widgets/app_buttons.widget.dart';
import 'package:flutter_bootstrap_app/views/widgets/premium_container.widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CurrentUserCubit, AsyncValueWrapper<User?>>(
      listener: (context, state) {
        if (state.status == AsyncValueStatus.initial) {
          context.goAppRoute(AppRoute.onboardingStep1);
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<AppSettingsCubit, AppSettingsState>(
          builder: (context, settings) => SingleChildScrollView(
            padding: const EdgeInsets.all(AppTheme.spacingMedium),
            child: Column(
              spacing: AppTheme.spacingMedium,
              children: [
                SettingsSection(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.t.settings.account,
                        style: context.theme.textTheme.titleSmall,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.read<CurrentUserCubit>().signOut();
                        },
                        child: const Icon(Icons.logout_outlined, size: 16),
                      ),
                    ],
                  ),
                  settings: [],
                ),
                PremiumContainer(
                  builder: (context, isPremium) {
                    if (isPremium) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.secondary.withValues(
                            alpha: 0.1,
                          ),
                          borderRadius: BorderRadius.circular(
                            AppTheme.spacingMedium,
                          ),
                          border: Border.all(
                            color: context.theme.colorScheme.secondary,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(AppTheme.spacingMedium),
                          child: Column(
                            spacing: AppTheme.spacingMedium,
                            children: [
                              Row(
                                spacing: AppTheme.spacingMedium,
                                children: [
                                  const Icon(
                                    Icons.workspace_premium_outlined,
                                    size: 48,
                                  ),
                                  Text(
                                    context
                                        .t
                                        .settings
                                        .premium
                                        .youArePremiumUser,
                                    style: context.theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),

                              Text(
                                context.t.subscriptions.cancelation.title(
                                  provider: switch (defaultTargetPlatform) {
                                    TargetPlatform.android =>
                                      context
                                          .t
                                          .subscriptions
                                          .cancelation
                                          .provider
                                          .google,
                                    TargetPlatform.iOS =>
                                      context
                                          .t
                                          .subscriptions
                                          .cancelation
                                          .provider
                                          .apple,
                                    _ => '',
                                  },
                                ),
                                style: context.theme.textTheme.labelSmall
                                    ?.copyWith(fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    return Container(
                      decoration: BoxDecoration(
                        color: context.theme.colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(
                          AppTheme.spacingMedium,
                        ),
                        border: Border.all(
                          color: context.theme.colorScheme.secondary,
                          width: 2,
                        ),
                      ),
                      padding: const EdgeInsets.all(AppTheme.spacingMedium),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: AppTheme.spacingMedium,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(
                                  AppTheme.spacingMedium,
                                ),
                                decoration: BoxDecoration(
                                  color: context.theme.colorScheme.primary
                                      .withValues(alpha: .1),
                                  borderRadius: BorderRadius.circular(
                                    AppTheme.spacingMedium,
                                  ),
                                ),
                                child: Icon(
                                  Icons.workspace_premium_outlined,
                                  size: 48,
                                  color: context.theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    AppTheme.spacingMedium,
                                  ),
                                  child: Text(
                                    context.t.settings.premium.upgradeTitle,
                                    style: context.theme.textTheme.titleMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          PrimaryButton(
                            onTap: () =>
                                context.pushAppRoute(AppRoute.purchases),
                            child: Text(context.t.settings.premium.upgradeNow),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SettingsSection(
                  title: Text(
                    context.t.settings.preferences,
                    style: context.theme.textTheme.titleSmall,
                  ),
                  settings: [
                    SettingRow.action(
                      label: context.t.settings.theme.label,
                      icon: const Icon(Icons.dark_mode_outlined),
                      action: SegmentedButton<ThemeMode>(
                        showSelectedIcon: false,
                        segments: [
                          ButtonSegment(
                            value: ThemeMode.light,
                            icon: const Icon(Icons.light_mode_outlined),
                            tooltip: context.t.settings.theme.light,
                          ),
                          ButtonSegment(
                            value: ThemeMode.dark,
                            icon: const Icon(Icons.dark_mode_outlined),
                            tooltip: context.t.settings.theme.dark,
                          ),
                          ButtonSegment(
                            value: ThemeMode.system,
                            icon: const Icon(Icons.auto_mode_outlined),
                            tooltip: context.t.settings.theme.system,
                          ),
                        ],
                        selected: {settings.theme},
                        onSelectionChanged: (newTheme) => context
                            .read<AppSettingsCubit>()
                            .setTheme(newTheme.first),
                      ),
                    ),
                    SettingRow.switcher(
                      icon: const Icon(Icons.analytics_outlined),
                      label: context.t.settings.analytics.label,
                      value: settings.areAnalyticsAuthorized,
                      onChanged: (areAnalyticsAuthorized) {
                        context.read<AppSettingsCubit>().setAnalyticsConsent(
                          areAnalyticsAuthorized: areAnalyticsAuthorized,
                        );
                      },
                    ),
                  ],
                ),
                BlocConsumer<PurchasesCubit, PurchasesState>(
                  listener: (context, state) {
                    // Handle state changes if needed
                    if (state.buyStatus.status == AsyncValueStatus.success) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            context.t.settings.restorePurchaseSuccess,
                          ),
                        ),
                      );
                    }
                  },
                  builder: (context, state) => SettingsSection(
                    title: Text(
                      context.t.settings.support,
                      style: context.theme.textTheme.titleSmall,
                    ),
                    settings: [
                      if (!state.isPremium)
                        SettingRow.forward(
                          icon: const Icon(Icons.restore_outlined),
                          label: context.t.settings.restorePurchases,
                          onTap: () =>
                              context.read<PurchasesCubit>().restorePurchases(),
                        ),
                      SettingRow.url(
                        icon: const Icon(Icons.edit_document),
                        label: context.t.settings.termsOfService,
                        url: tosUrl,
                      ),
                      SettingRow.url(
                        icon: const Icon(Icons.privacy_tip_outlined),
                        label: context.t.settings.privacyPolicy,
                        url: privacyUrl,
                      ),
                      SettingRow.forward(
                        icon: const Icon(Icons.info_outline),
                        label: context.t.settings.licenses,
                        onTap: () async => PackageInfo.fromPlatform().then((
                          packageInfo,
                        ) {
                          if (!context.mounted) return;
                          showLicensePage(
                            context: context,
                            applicationName: packageInfo.appName,
                            applicationVersion:
                                '${packageInfo.version}+${packageInfo.buildNumber}',
                          );
                        }),
                      ),
                      SettingRow.forward(
                        icon: const Icon(Icons.delete_outline),
                        label: context.t.settings.deleteMyAccount.title,
                        onTap: () async {
                          final shouldDelete = await showDialog<bool>(
                            context: context,
                            builder: (context) =>
                                const _DeleteMyAccountConfirmationDialog(),
                          );
                          if (shouldDelete != true || !context.mounted) return;
                          final isPremium = context
                              .read<PurchasesCubit>()
                              .state
                              .isPremium;
                          if (isPremium) {
                            final shouldDeleteAnyway = await showDialog<bool>(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                  context
                                      .t
                                      .settings
                                      .deleteMyAccount
                                      .premiumWarningTitle,
                                ),
                                content: Text(
                                  context.t.settings.deleteMyAccount
                                      .premiumWarningSubtitle(
                                        provider:
                                            switch (defaultTargetPlatform) {
                                              TargetPlatform.android =>
                                                context
                                                    .t
                                                    .subscriptions
                                                    .cancelation
                                                    .provider
                                                    .google,
                                              TargetPlatform.iOS =>
                                                context
                                                    .t
                                                    .subscriptions
                                                    .cancelation
                                                    .provider
                                                    .apple,
                                              _ => '',
                                            },
                                      ),
                                ),
                                actions: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: AppTheme.spacingSmall,
                                    ),
                                    child: PrimaryButton(
                                      onTap: () =>
                                          Navigator.of(context).pop(false),
                                      child: Text(
                                        context
                                            .t
                                            .settings
                                            .deleteMyAccount
                                            .cancel,
                                      ),
                                    ),
                                  ),
                                  SecondaryButton(
                                    onTap: () =>
                                        Navigator.of(context).pop(true),
                                    child: Text(
                                      context
                                          .t
                                          .settings
                                          .deleteMyAccount
                                          .confirmAnyway,
                                    ),
                                  ),
                                ],
                              ),
                            );
                            if (!(shouldDeleteAnyway == true) ||
                                !context.mounted) {
                              return;
                            }
                          }
                          context.read<CurrentUserCubit>().deleteMyAccount();
                        },
                      ),
                    ],
                  ),
                ),
                if (kDebugMode)
                  SettingsSection(
                    title: Text(
                      context.t.settings.debug,
                      style: context.theme.textTheme.titleSmall,
                    ),
                    settings: [
                      SettingRow.forward(
                        label: context.t.settings.onboarding,
                        onTap: () =>
                            context.pushAppRoute(AppRoute.onboardingStep1),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DeleteMyAccountConfirmationDialog extends StatelessWidget {
  const _DeleteMyAccountConfirmationDialog();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.t.settings.deleteMyAccount.confirmTitle),
      content: Text(context.t.settings.deleteMyAccount.confirmSubtitle),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: AppTheme.spacingSmall),
          child: PrimaryButton(
            onTap: () => Navigator.of(context).pop(false),
            child: Text(context.t.settings.deleteMyAccount.cancel),
          ),
        ),
        SecondaryButton(
          onTap: () => Navigator.of(context).pop(true),
          child: Text(context.t.settings.deleteMyAccount.confirm),
        ),
      ],
    );
  }
}
