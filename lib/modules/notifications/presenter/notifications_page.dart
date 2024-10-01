import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageWidget(body: TextWidget('Não há nada novo por aqui!'));
  }
}
