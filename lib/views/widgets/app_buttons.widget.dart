import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final String? heroTag;

  const PrimaryButton({
    required this.child,
    required this.onTap,
    this.heroTag,
    super.key,
  });

  factory PrimaryButton.text(
    String text, {
    required VoidCallback? onTap,
    String? heroTag,
  }) => PrimaryButton(
    onTap: onTap,
    heroTag: heroTag,
    child: Text(
      text,
      // color will be resolved from the button's style
    ),
  );

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final textStyle = Theme.of(
      context,
    ).textTheme.titleMedium?.copyWith(color: cs.onPrimary);

    return Hero(
      tag: heroTag ?? UniqueKey(),
      child: SizedBox(
        width: double.infinity,
        height: 54,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: cs.primary,
            foregroundColor: cs.onPrimary,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          onPressed: onTap,
          child: DefaultTextStyle(
            style: textStyle ?? const TextStyle(color: Colors.white),
            child: child,
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const SecondaryButton({required this.child, required this.onTap, super.key});

  factory SecondaryButton.text(String text, {required VoidCallback? onTap}) =>
      SecondaryButton(
        onTap: onTap,
        child: Text(
          text,
          // color will be resolved from the button's style
        ),
      );

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final textStyle = Theme.of(
      context,
    ).textTheme.titleMedium?.copyWith(color: cs.primary);

    return SizedBox(
      width: double.infinity,
      height: 54,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: cs.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90),
          ),
        ),
        onPressed: onTap,
        child: DefaultTextStyle(
          style: textStyle ?? const TextStyle(color: Colors.black),
          child: child,
        ),
      ),
    );
  }
}
