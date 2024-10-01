import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';

class SpacerWidget extends StatelessWidget with ThemeMixin {
  const SpacerWidget({
    this.direction = Axis.vertical,
    this.size = SpacerWidgetSize.medium,
    this.value,
    super.key,
  });

  final Axis direction;
  final SpacerWidgetSize size;
  final double? value;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics(context);

    late double dimension;
    switch (size) {
      case SpacerWidgetSize.small:
        dimension = metrics.small;
      case SpacerWidgetSize.medium:
        dimension = metrics.medium;
      case SpacerWidgetSize.large:
        dimension = metrics.large;
    }

    late double? width;
    late double? height;
    switch (direction) {
      case Axis.vertical:
        width = null;
        height = value ?? dimension;
      case Axis.horizontal:
        width = value ?? dimension;
        height = null;
    }

    return SizedBox(width: width, height: height);
  }
}

enum SpacerWidgetSize {
  small,
  medium,
  large,
}
