import 'package:flutter/material.dart';

class ThemeLightColors extends ThemeColorsExt {
  ThemeLightColors({
    super.primary = const Color(0xFFFF4B4E),
    super.onPrimary = const Color(0xFFFFFFFF),
    super.surface = const Color(0xFFF2F2F2),
    super.onSurface = const Color(0xFF161616),
    super.success = const Color(0xFF138C00),
    super.onSuccess = const Color(0xFFFFFFFF),
    super.warning = const Color(0xFF8C8000),
    super.onWarning = const Color(0xFFFFFFFF),
    super.error = const Color(0xFF8C1300),
    super.onError = const Color(0xFFFFFFFF),
    super.text = const Color(0xFF161616),
    super.textAlt = const Color.fromRGBO(22, 22, 22, 0.6),
    super.shadow = const Color.fromRGBO(22, 22, 22, 0.1),
    super.border = const Color.fromRGBO(22, 22, 22, 0.1),
    super.background = const Color(0xFFFFFFFF),
  });
}

class ThemeDarkColors extends ThemeColorsExt {
  ThemeDarkColors({
    super.primary = const Color(0xFFFF4B4E),
    super.onPrimary = const Color(0xFFFFFFFF),
    super.surface = const Color(0xFF505050),
    super.onSurface = const Color(0xFFF2F2F2),
    super.success = const Color(0xFF22FF00),
    super.onSuccess = const Color(0xFFFFFFFF),
    super.warning = const Color(0xFFD4FF00),
    super.onWarning = const Color(0xFFFFFFFF),
    super.error = const Color(0xFFFF0000),
    super.onError = const Color(0xFFFFFFFF),
    super.text = const Color(0xFFF2F2F2),
    super.textAlt = const Color.fromRGBO(242, 242, 242, 0.6),
    super.shadow = const Color.fromRGBO(242, 242, 242, 0.1),
    super.border = const Color.fromRGBO(22, 22, 22, 0.1),
    super.background = const Color(0xFF242424),
  });
}

class ThemeColorsExt extends ThemeExtension<ThemeColorsExt> {
  const ThemeColorsExt({
    required this.primary,
    required this.onPrimary,
    required this.surface,
    required this.onSurface,
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.error,
    required this.onError,
    required this.text,
    required this.textAlt,
    required this.shadow,
    required this.border,
    required this.background,
  });

  final Color primary;
  final Color onPrimary;
  final Color surface;
  final Color onSurface;
  final Color success;
  final Color onSuccess;
  final Color warning;
  final Color onWarning;
  final Color error;
  final Color onError;
  final Color text;
  final Color textAlt;
  final Color shadow;
  final Color border;
  final Color background;

  @override
  ThemeExtension<ThemeColorsExt> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? surface,
    Color? onSurface,
    Color? success,
    Color? onSuccess,
    Color? warning,
    Color? onWarning,
    Color? error,
    Color? onError,
    Color? text,
    Color? textAlt,
    Color? shadow,
    Color? border,
    Color? background,
  }) {
    return ThemeColorsExt(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      text: text ?? this.text,
      textAlt: textAlt ?? this.textAlt,
      shadow: shadow ?? this.shadow,
      border: border ?? this.border,
      background: background ?? this.background,
    );
  }

  @override
  ThemeExtension<ThemeColorsExt> lerp(
    covariant ThemeColorsExt other,
    double t,
  ) {
    return ThemeColorsExt(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      text: Color.lerp(text, other.text, t)!,
      textAlt: Color.lerp(textAlt, other.textAlt, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      border: Color.lerp(border, other.border, t)!,
      background: Color.lerp(background, other.background, t)!,
    );
  }
}
