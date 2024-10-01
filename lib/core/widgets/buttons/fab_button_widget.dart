import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';

class FabButtonWidget extends StatelessWidget with ThemeMixin {
  const FabButtonWidget({
    required this.icon,
    this.onPressed,
    super.key,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return TouchableWidget(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(metrics.small),
        decoration: BoxDecoration(
          color: colors.primary,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: colors.onPrimary,
          size: metrics.icon * 1.4,
        ),
      ),
    );
  }
}
