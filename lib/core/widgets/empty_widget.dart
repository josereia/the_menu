import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    required this.isEmpty,
    required this.message,
    required this.child,
    super.key,
  });

  final bool isEmpty;
  final String message;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!isEmpty) return child;

    return Center(child: TextWidget(message));
  }
}
