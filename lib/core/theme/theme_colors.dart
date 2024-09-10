import 'package:flutter/material.dart';

class ThemeLightColors extends ThemeColorsExt {
  ThemeLightColors({
    super.primary = const Color(0xFFFF4B4E),
    super.onPrimary = const Color(0xFFFFFFFF),
    super.surface = const Color(0xFF161616),
    super.onSurface = const Color(0xFF000000),
    super.text = const Color(0xFF161616),
    super.textAlt = const Color.fromRGBO(22, 22, 22, 0.6),
    super.shadow = const Color.fromRGBO(22, 22, 22, 0.1),
    super.background = const Color(0xFFFFFFFF),
  });
}

class ThemeDarkColors extends ThemeColorsExt {
  ThemeDarkColors({
    super.primary = const Color(0xFFFF4B4E),
    super.onPrimary = const Color(0xFFFFFFFF),
    super.surface = const Color(0xFF505050),
    super.onSurface = const Color(0xFFF2F2F2),
    super.text = const Color(0xFFF2F2F2),
    super.textAlt = const Color.fromRGBO(242, 242, 242, 0.6),
    super.shadow = const Color.fromRGBO(242, 242, 242, 0.1),
    super.background = const Color(0xFF242424),
  });
}

class ThemeColorsExt extends ThemeExtension<ThemeColorsExt> {
  const ThemeColorsExt({
    required this.primary,
    required this.onPrimary,
    required this.surface,
    required this.onSurface,
    required this.text,
    required this.textAlt,
    required this.shadow,
    required this.background,
  });

  final Color primary;
  final Color onPrimary;
  final Color surface;
  final Color onSurface;
  final Color text;
  final Color textAlt;
  final Color shadow;
  final Color background;

  @override
  ThemeExtension<ThemeColorsExt> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? surface,
    Color? onSurface,
    Color? text,
    Color? textAlt,
    Color? shadow,
    Color? background,
  }) {
    return ThemeColorsExt(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      text: text ?? this.text,
      textAlt: textAlt ?? this.textAlt,
      shadow: shadow ?? this.shadow,
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
      text: Color.lerp(text, other.text, t)!,
      textAlt: Color.lerp(textAlt, other.textAlt, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      background: Color.lerp(background, other.background, t)!,
    );
  }
}
