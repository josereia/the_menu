import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/tab_view/tab_view_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageWidget(
      body: SafeArea(
        child: TabViewWidget(
          tabs: ['Todos', 'Geleias', 'Queijos', 'Vinhos'],
          children: [
            TextWidget('Todos'),
            TextWidget('Geleias'),
            TextWidget('Queijos'),
            TextWidget('Vinhos'),
          ],
        ),
      ),
    );
  }
}
