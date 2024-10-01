import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageWidget(body: TextWidget('Você ainda não fez pedidos'));
  }
}
