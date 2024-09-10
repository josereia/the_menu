import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_menu/core/theme/theme_colors.dart';
import 'package:the_menu/core/theme/theme_metrics.dart';

class AppTheme {
  const AppTheme({required this.isDark});

  final bool isDark;

  ThemeData get() {
    final metrics = ThemeMetrics();
    var brightness = Brightness.light;
    ThemeColorsExt colors = ThemeLightColors();
    var theme = ThemeData.light(useMaterial3: true);
    if (isDark) {
      colors = ThemeDarkColors();
      brightness = Brightness.dark;
      theme = ThemeData.dark(useMaterial3: true);
    }

    return theme.copyWith(
      extensions: [colors, metrics],
      brightness: brightness,
      cardColor: colors.surface,
      focusColor: colors.primary,
      shadowColor: colors.shadow,
      primaryColor: colors.primary,
      indicatorColor: colors.primary,
      dialogBackgroundColor: colors.surface,
      scaffoldBackgroundColor: colors.background,
      colorScheme: ColorScheme.fromSeed(
        brightness: brightness,
        seedColor: colors.primary,
        primary: colors.primary,
        onPrimary: colors.primary,
        surface: colors.surface,
        onSurface: colors.onSurface,
        shadow: colors.shadow,
      ),
      iconTheme: IconThemeData(color: colors.text, size: metrics.icon),
      textTheme: GoogleFonts.interTextTheme(theme.textTheme).copyWith(
        bodySmall: GoogleFonts.inter(
          fontSize: 10,
          color: colors.text,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 12,
          color: colors.text,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 14,
          color: colors.text,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: 10,
          color: colors.text,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 12,
          color: colors.text,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 14,
          color: colors.text,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 16,
          color: colors.text,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 18,
          color: colors.text,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: GoogleFonts.inter(
          fontSize: 21,
          color: colors.text,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
