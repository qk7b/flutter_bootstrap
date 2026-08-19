import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsSection extends StatelessWidget {
  final Widget title;
  final List<SettingRow> settings;

  const SettingsSection({
    super.key,
    required this.title,
    required this.settings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppTheme.spacingMedium),
        border: Border.all(
          color: context.theme.colorScheme.outline.withValues(alpha: .2),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppTheme.spacingMedium),
            ),
            child: Container(
              width: double.infinity,
              color: context.theme.colorScheme.primaryContainer.withValues(
                alpha: .1,
              ),
              padding: const EdgeInsets.all(AppTheme.spacingMedium),
              child: title,
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: context.theme.colorScheme.outline.withValues(alpha: .2),
          ),
          Padding(
            padding: const EdgeInsets.all(AppTheme.spacingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [...settings],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingRow extends StatelessWidget {
  final String? label;
  final Widget? action;
  final Widget? icon;
  final VoidCallback? onTap;

  const SettingRow._({this.label, this.action, this.icon, this.onTap});

  factory SettingRow.action({
    required String label,
    required Widget action,
    Widget? icon,
  }) => SettingRow._(label: label, action: action, icon: icon);

  factory SettingRow.switcher({
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
    Widget? icon,
  }) => SettingRow._(
    label: label,
    action: Switch(value: value, onChanged: onChanged),
    icon: icon,
  );

  factory SettingRow.forward({
    required String label,
    required VoidCallback onTap,
    Widget? icon,
  }) => SettingRow._(label: label, onTap: onTap, icon: icon);

  factory SettingRow.url({
    required String label,
    required String url,
    Widget? icon,
  }) => SettingRow._(
    icon: icon,
    label: label,
    action: IconButton(
      icon: const Icon(Icons.open_in_new, size: 16),
      onPressed: () => launchUrlString(url),
    ),
  );

  factory SettingRow.custom({required Widget child, VoidCallback? onTap}) =>
      SettingRow._(action: child, onTap: onTap);

  @override
  Widget build(BuildContext context) {
    if (label == null) return InkWell(onTap: onTap, child: action!);
    return ListTile(
      visualDensity: VisualDensity.comfortable,
      title: Text(label!, style: context.theme.textTheme.labelMedium),
      onTap: onTap,
      leading: icon,
      trailing: action ?? const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
