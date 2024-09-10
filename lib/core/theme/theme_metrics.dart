import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeMetrics extends ThemeMetricsExt {
  ThemeMetrics({
    super.small = 8,
    super.medium = 16,
    super.large = 24,
    super.icon = 18,
    super.border = 1,
    super.blur = 50,
    super.radius = const Radius.circular(16),
    super.field = const Size(240, 28),
    super.appBar = const Size.fromHeight(62),
    super.button = const Size(240, 28),
    super.curve = Curves.easeInOutCubic,
    super.duration = const Duration(milliseconds: 200),
  });
}

class ThemeMetricsExt extends ThemeExtension<ThemeMetricsExt> {
  const ThemeMetricsExt({
    required this.small,
    required this.medium,
    required this.large,
    required this.icon,
    required this.border,
    required this.blur,
    required this.radius,
    required this.appBar,
    required this.field,
    required this.button,
    required this.curve,
    required this.duration,
  });

  final double small;
  final double medium;
  final double large;
  final double icon;
  final double border;
  final double blur;
  final Radius radius;
  final Size appBar;
  final Size field;
  final Size button;
  final Curve curve;
  final Duration duration;

  @override
  ThemeExtension<ThemeMetricsExt> copyWith({
    double? small,
    double? medium,
    double? large,
    double? icon,
    double? border,
    double? blur,
    Radius? radius,
    Size? appBar,
    Size? field,
    Size? button,
    Curve? curve,
    Duration? duration,
  }) {
    return ThemeMetricsExt(
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      icon: icon ?? this.icon,
      border: border ?? this.border,
      blur: blur ?? this.blur,
      radius: radius ?? this.radius,
      appBar: appBar ?? this.appBar,
      field: field ?? this.field,
      button: button ?? this.button,
      curve: curve ?? this.curve,
      duration: duration ?? this.duration,
    );
  }

  @override
  ThemeExtension<ThemeMetricsExt> lerp(
    covariant ThemeMetricsExt other,
    double t,
  ) {
    return ThemeMetricsExt(
      small: lerpDouble(small, other.small, t)!,
      medium: lerpDouble(medium, other.medium, t)!,
      large: lerpDouble(large, other.large, t)!,
      icon: lerpDouble(icon, other.icon, t)!,
      border: lerpDouble(border, other.border, t)!,
      blur: lerpDouble(blur, other.blur, t)!,
      radius: Radius.lerp(radius, other.radius, t)!,
      appBar: Size.lerp(appBar, other.appBar, t)!,
      field: Size.lerp(field, other.field, t)!,
      button: Size.lerp(button, other.button, t)!,
      curve: curve,
      duration: lerpDuration(duration, other.duration, t),
    );
  }
}
