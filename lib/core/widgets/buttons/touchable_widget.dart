import 'package:flutter/material.dart';

class TouchableWidget extends StatelessWidget {
  const TouchableWidget({
    required this.onPressed,
    required this.child,
    this.isEnabled = true,
    super.key,
  });

  final Widget child;
  final bool isEnabled;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isEnabled ? 1 : 0.8,
      child: GestureDetector(
        onTap: isEnabled ? onPressed : null,
        child: child,
      ),
    );
  }
}
