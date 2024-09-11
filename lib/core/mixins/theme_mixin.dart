import 'package:flutter/material.dart';
import 'package:the_menu/core/theme/theme_colors.dart';
import 'package:the_menu/core/theme/theme_metrics.dart';

mixin ThemeMixin {
  ThemeColorsExt getColors(BuildContext context) {
    final colors = Theme.of(context).extension<ThemeColorsExt>();
    return colors!;
  }

  ThemeMetricsExt getMetrics(BuildContext context) {
    final metrics = Theme.of(context).extension<ThemeMetricsExt>();
    return metrics!;
  }

  ThemeData getTheme(BuildContext context) => Theme.of(context);
}
