import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:flutter_bootstrap_app/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TosText extends StatelessWidget {
  final String intro;
  final Color? textColor;
  final Color? linkColor;

  const TosText({
    super.key,
    required this.intro,
    this.textColor,
    this.linkColor,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final tos = TextSpan(
          text: context.t.tos.tos,
          style: TextStyle(
            color: linkColor ?? context.theme.colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launchUrlString(tosUrl);
            },
        );
        final legals = TextSpan(
          text: context.t.tos.privacy,
          style: TextStyle(
            color: linkColor ?? context.theme.colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launchUrlString(privacyUrl);
            },
        );
        return RichText(
          text: TextSpan(
            style: context.theme.textTheme.bodySmall?.copyWith(
              color: textColor,
            ),
            children: [
              TextSpan(text: intro),
              const TextSpan(text: ' '),
              tos,
              const TextSpan(text: ' '),
              TextSpan(text: context.t.tos.also),
              const TextSpan(text: ' '),
              legals,
            ],
          ),
        );
      },
    );
  }
}
