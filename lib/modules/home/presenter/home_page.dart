import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/cards/product_card_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/tab_view/tab_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageWidget(
      body: SafeArea(
        bottom: false,
        child: TabViewWidget(
          tabs: ['Todos', 'Bebidas'],
          children: [_AllWidget(), _DrinksWidget()],
        ),
      ),
    );
  }
}

class _AllWidget extends StatelessWidget {
  const _AllWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Queijo Minas',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image:
              'https://laticiniosholandes.com.br/wp-content/uploads/2021/09/4-1024x576.jpg',
          price: 55,
        );
      },
    );
  }
}

class _DrinksWidget extends StatelessWidget {
  const _DrinksWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Cuba Libre',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image:
              'https://www.campariacademy.com/pt-br/wp-content/uploads/sites/5/2022/08/cuba-libre-header-1920x1080-1-800x800.jpg',
          price: 13,
        );
      },
    );
  }
}
