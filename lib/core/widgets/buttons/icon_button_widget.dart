import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';

class IconButtonWidget extends StatelessWidget with ThemeMixin {
  const IconButtonWidget({
    required this.icon,
    this.color,
    this.onPressed,
    super.key,
  });

  final IconData icon;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return TouchableWidget(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: metrics.icon * 1.4,
        color: color ?? colors.text,
      ),
    );
  }
}
