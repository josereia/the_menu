import 'package:flutter/material.dart';

class TouchableWidget extends StatelessWidget {
  const TouchableWidget({
    required this.onPressed,
    required this.child,
    super.key,
  });

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: child,
    );
  }
}
