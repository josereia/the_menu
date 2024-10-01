import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';

class CardWidget extends StatelessWidget with ThemeMixin {
  const CardWidget({
    required this.child,
    this.width,
    this.height,
    super.key,
  });

  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(metrics.small),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.all(metrics.radius),
      ),
      child: child,
    );
  }
}
