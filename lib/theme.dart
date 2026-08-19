import 'package:flutter/material.dart';

/// Centralized theme configuration for the entire app
/// All colors, spacing, typography, and other styling constants are defined here
class AppTheme {
  // ============ COLORS ============

  // Primary & Accent
  static const Color primary = Color(0xFFEA907A);
  static const Color accent = Color(0xFFFBC687);

  // Background & Surface
  static const Color background = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color darkBackground = Color(0xFF0F172A);
  static const Color darkSurface = Color(0xFF111827);

  // Text
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textMuted = Color(0xFF64748B);
  static const Color darkTextPrimary = Color(0xFFF8FAFC);
  static const Color darkTextMuted = Color(0xFFCBD5E1);

  // Borders & Dividers
  static const Color borderColor = Color(0xFFE2E8F0);
  static const Color darkBorderColor = Color(0xFF334155);

  // Semantic Colors
  static const Color errorColor = Color(0xFFDC3545);
  static const Color successColor = Color(0xFFAACDBE);
  static const Color warningColor = Color(0xFFFFC107);

  // Provide ThemeData so app can be driven by Theme.of(context)
  static ThemeData get themeData {
    return lightThemeData;
  }

  static ThemeData get lightThemeData {
    return _buildThemeData(
      brightness: Brightness.light,
      backgroundColor: background,
      surfaceColor: surface,
      textPrimaryColor: textPrimary,
      textMutedColor: textMuted,
      borderColorValue: borderColor,
      fillColor: Colors.white,
    );
  }

  static ThemeData get darkThemeData {
    return _buildThemeData(
      brightness: Brightness.dark,
      backgroundColor: darkBackground,
      surfaceColor: darkSurface,
      textPrimaryColor: darkTextPrimary,
      textMutedColor: darkTextMuted,
      borderColorValue: darkBorderColor,
      fillColor: darkSurface,
    );
  }

  static ThemeData _buildThemeData({
    required Brightness brightness,
    required Color backgroundColor,
    required Color surfaceColor,
    required Color textPrimaryColor,
    required Color textMutedColor,
    required Color borderColorValue,
    required Color fillColor,
  }) {
    final colorScheme = ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: Colors.white,
      secondary: accent,
      onSecondary: Colors.white,
      error: errorColor,
      onError: Colors.white,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      tertiary: accent,
    );

    return ThemeData(
      brightness: brightness,
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      scaffoldBackgroundColor: backgroundColor,
      fontFamily: fontFamily,
      useMaterial3: true,
      textTheme: _textTheme(
        textPrimaryColor: textPrimaryColor,
        textMutedColor: textMutedColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColor,
        foregroundColor: textPrimaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: textPrimaryColor),
        titleTextStyle: titleLarge.copyWith(color: textPrimaryColor),
      ),
      cardTheme: CardThemeData(
        color: surfaceColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLarge),
          side: BorderSide(color: borderColorValue, width: 1),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surfaceColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: spacingMedium,
          vertical: spacingSmall,
        ),
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: BorderSide(color: borderColorValue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: BorderSide(color: borderColorValue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: const BorderSide(color: primary, width: 2.0),
        ),
        hintStyle: TextStyle(color: textMutedColor, fontSize: 14),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusLarge),
          ),
          minimumSize: const Size(double.infinity, 54),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        labelStyle: TextStyle(color: textPrimaryColor, fontSize: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLarge),
          side: BorderSide(color: borderColorValue),
        ),
        selectedColor: primary.withAlpha(
          brightness == Brightness.dark ? 61 : 26,
        ),
        side: BorderSide(color: borderColorValue),
        padding: const EdgeInsets.symmetric(
          horizontal: spacingMedium,
          vertical: spacingSmall,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primary;
          }
          return fillColor;
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      ),
    );
  }

  // ============ TYPOGRAPHY ============

  // Font Families
  static const String fontFamily = 'Plus Jakarta Sans';

  // Text Styles (High-contrast typography hierarchy)
  static TextTheme _textTheme({
    required Color textPrimaryColor,
    required Color textMutedColor,
  }) {
    return TextTheme(
      headlineLarge: headlineLarge.copyWith(color: textPrimaryColor),
      headlineMedium: headlineMedium.copyWith(color: textPrimaryColor),
      headlineSmall: headlineSmall.copyWith(color: textPrimaryColor),
      titleLarge: titleLarge.copyWith(color: textPrimaryColor),
      titleMedium: titleMedium.copyWith(color: textPrimaryColor),
      titleSmall: titleSmall.copyWith(color: textPrimaryColor),
      bodyLarge: bodyLarge.copyWith(color: textPrimaryColor),
      bodyMedium: bodyMedium.copyWith(color: textPrimaryColor),
      bodySmall: bodySmall.copyWith(color: textMutedColor),
      labelLarge: labelLarge.copyWith(color: textPrimaryColor),
      labelSmall: labelSmall.copyWith(color: textMutedColor),
    );
  }

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: textPrimary,
    height: 1.2,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textPrimary,
    height: 1.2,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textPrimary,
    height: 1.3,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textPrimary,
    height: 1.4,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: textPrimary,
    height: 1.4,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: textPrimary,
    height: 1.4,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textPrimary,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: textPrimary,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: textMuted,
    height: 1.4,
  );

  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: textPrimary,
    height: 1.4,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: textMuted,
    height: 1.3,
  );

  // ============ SPACING ============

  static const double spacingExtraSmall = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 24.0;
  static const double spacingXL = 32.0;

  // ============ BORDER RADIUS ============

  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXL = 24.0;

  // ============ BUTTON STYLES ============

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: primary,
    foregroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusLarge),
    ),
    minimumSize: const Size(double.infinity, 54),
  );

  // ============ INPUT DECORATION ============

  static InputDecoration inputDecoration({
    required String hintText,
    IconData? prefixIcon,
    VoidCallback? onClear,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: textMuted, fontSize: 14),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: spacingMedium,
        vertical: spacingSmall,
      ),
      prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      filled: true,
      fillColor: surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: primary, width: 2.0),
      ),
    );
  }

  // ============ CARD ELEVATION ============

  static const double elevationSmall = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationLarge = 8.0;
}
