import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';

class TextWidget extends StatelessWidget with ThemeMixin {
  const TextWidget(
    this.text, {
    this.maxLines = 1,
    this.isItalic = false,
    this.isUnderline = false,
    this.type = TextWidgetType.bodyMedium,
    this.color,
    super.key,
  });

  final String text;
  final int maxLines;
  final TextWidgetType type;
  final Color? color;
  final bool isItalic;
  final bool isUnderline;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    final style = _getStyle(theme);

    final decor = isUnderline ? TextDecoration.underline : TextDecoration.none;

    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style.copyWith(
        color: color,
        decoration: decor,
        fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      ),
    );
  }

  TextStyle _getStyle(ThemeData theme) {
    late TextStyle style;
    switch (type) {
      case TextWidgetType.bodySmall:
        style = theme.textTheme.bodySmall!;
      case TextWidgetType.bodyMedium:
        style = theme.textTheme.bodyMedium!;
      case TextWidgetType.bodyLarge:
        style = theme.textTheme.bodyLarge!;
      case TextWidgetType.titleSmall:
        style = theme.textTheme.titleSmall!;
      case TextWidgetType.titleMedium:
        style = theme.textTheme.titleMedium!;
      case TextWidgetType.titleLarge:
        style = theme.textTheme.titleLarge!;
      case TextWidgetType.headlineSmall:
        style = theme.textTheme.headlineSmall!;
      case TextWidgetType.headlineMedium:
        style = theme.textTheme.headlineMedium!;
      case TextWidgetType.headlineLarge:
        style = theme.textTheme.headlineLarge!;
    }

    return style;
  }
}

enum TextWidgetType {
  bodySmall,
  bodyMedium,
  bodyLarge,
  titleSmall,
  titleMedium,
  titleLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
}
