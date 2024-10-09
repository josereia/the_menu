import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    required this.text,
    this.onPressed,
    super.key,
    this.textType = TextWidgetType.bodyMedium,
  });

  final String text;
  final void Function()? onPressed;
  final TextWidgetType? textType;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TextWidget(
        text,
        isItalic: true,
        isUnderline: true,
      ),
    );
  }
}
