import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget with ThemeMixin {
  const ButtonWidget({
    required this.text,
    required this.icon,
    this.isEnabled = true,
    this.onPressed,
    super.key,
  });

  final String text;
  final IconData icon;
  final bool isEnabled;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    final bgColor = colors.primary;
    final fgColor = colors.onPrimary;

    return TouchableWidget(
      isEnabled: isEnabled,
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(metrics.small),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(metrics.radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: metrics.icon * 1.4, color: fgColor),
            const SpacerWidget(
              direction: Axis.horizontal,
              size: SpacerWidgetSize.small,
            ),
            TextWidget(
              text,
              color: fgColor,
              type: TextWidgetType.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
