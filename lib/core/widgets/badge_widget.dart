import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class BadgeWidget extends StatelessWidget with ThemeMixin {
  const BadgeWidget({
    required this.text,
    this.color = BadgeWidgetColor.success,
    super.key,
  });

  final String text;
  final BadgeWidgetColor color;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    late Color bgColor;
    late Color fgColor;
    switch (color) {
      case BadgeWidgetColor.success:
        bgColor = colors.success;
        fgColor = colors.onSuccess;
      case BadgeWidgetColor.error:
        bgColor = colors.error;
        fgColor = colors.onError;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(metrics.radius / 2),
      ),
      child: TextWidget(
        text,
        color: fgColor,
        type: TextWidgetType.titleMedium,
      ),
    );
  }
}

enum BadgeWidgetColor { success, error }
