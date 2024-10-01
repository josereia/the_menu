import 'package:flutter/material.dart';
import 'package:the_menu/core/widgets/app_bar_widget.dart';
import 'package:the_menu/core/widgets/cards/product_card_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/tab_view/tab_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: const [
            AppBarWidget(),
            SpacerWidget(),
            TabViewWidget(
              tabs: [
                'Todos',
                'Bebidas',
                'Artesanais',
                'Cestas',
                'Doces',
                'Geleias',
                'Linguiças',
              ],
              // ignore: lines_longer_than_80_chars
              children: [
                _AllWidget(),
                _DrinksWidget(),
                _ArtesanaisWidget(),
                _CestasWidget(),
                _DocesWidget(),
                _GeleiasWidget(),
                _LinguicaWidget(),
              ],
            ),
          ],
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
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Queijo Minas',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image:
              'assets/queijo.jpg',
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
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Cuba Libre',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image:
              'assets/cuba.jpg',
          price: 13,
        );
      },
    );
  }
}

class _ArtesanaisWidget extends StatelessWidget {
  const _ArtesanaisWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Doce de leite ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/leite.jpg',
          price: 13,
        );
      },
    );
  }
}

class _CestasWidget extends StatelessWidget {
  const _CestasWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Cestas ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/cestas.jpg',
          price: 13,
        );
      },
    );
  }
}

class _DocesWidget extends StatelessWidget {
  const _DocesWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Paçocas ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/doces.jpeg',
          price: 13,
        );
      },
    );
  }
}

class _GeleiasWidget extends StatelessWidget {
  const _GeleiasWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Geleia de morango ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image:'assets/geleia.jpeg',
          price: 13,
        );
      },
    );
  }
}

class _LinguicaWidget extends StatelessWidget {
  const _LinguicaWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const SpacerWidget(
        size: SpacerWidgetSize.small,
      ),
      itemBuilder: (_, __) {
        return const ProductCardWidget(
          name: 'Toscana ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/linguica.jpeg',
          price: 13,
        );
      },
    );
  }
}
