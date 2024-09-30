import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';

class SpacerWidget extends StatelessWidget with ThemeMixin {
  const SpacerWidget({
    this.direction = Axis.vertical,
    this.size = SpacerWidgetSize.medium,
    super.key,
  });

  final Axis direction;
  final SpacerWidgetSize size;

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

    return SizedBox(
      width: direction == Axis.horizontal ? dimension : null,
      height: direction == Axis.vertical ? dimension : null,
    );
  }
}

enum SpacerWidgetSize {
  small,
  medium,
  large,
}
