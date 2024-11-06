import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget with ThemeMixin {
  const ButtonWidget({
    required this.text,
    required this.icon,
    this.bgColor,
    this.fgColor,
    this.alignment = MainAxisAlignment.center,
    this.sufixIcon,
    this.isEnabled = true,
    this.onPressed,
    super.key,
  });

  final String text;
  final IconData icon;
  final IconData? sufixIcon;
  final MainAxisAlignment alignment;
  final Color? bgColor;
  final Color? fgColor;
  final bool isEnabled;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    final backColor = bgColor ?? colors.primary;
    final frontColor = fgColor ?? colors.onPrimary;

    return TouchableWidget(
      isEnabled: isEnabled,
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(metrics.small),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.all(metrics.radius / 1.2),
        ),
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: metrics.icon * 1.4, color: frontColor),
                const SpacerWidget(
                  direction: Axis.horizontal,
                  size: SpacerWidgetSize.small,
                ),
                TextWidget(
                  text,
                  color: frontColor,
                  type: TextWidgetType.titleMedium,
                ),
              ],
            ),
            if (sufixIcon != null)
              const SpacerWidget(
                direction: Axis.horizontal,
                size: SpacerWidgetSize.small,
              ),
            if (sufixIcon != null)
              Icon(sufixIcon, size: metrics.icon * 1.4, color: frontColor),
          ],
        ),
      ),
    );
  }
}
