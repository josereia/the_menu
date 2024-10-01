import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  
  const TextFieldWidget({super.key, this.labelText = ''});

  final String labelText;

  @override
  Widget build(BuildContext context) {

    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
