import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/domain/product_entity.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/app_bars/app_bar_widget.dart';
import 'package:the_menu/core/widgets/buttons/fab_button_widget.dart';
import 'package:the_menu/core/widgets/cards/product_card_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/tab_view/tab_view_widget.dart';
import 'package:the_menu/modules/home/presenter/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      fabBtn: FabButtonWidget(
        icon: SolarIconsOutline.bag,
        onPressed: () async => Get.toNamed(AppRoutes.bag),
      ),
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

class _AllWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Queijo Minas',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/queijo.jpg',
          price: 55,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}

class _DrinksWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Cuba Libre',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/cuba.jpg',
          price: 13,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}

class _ArtesanaisWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Doce de leite ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/leite.jpg',
          price: 13,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}

class _CestasWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Cestas ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/cestas.jpg',
          price: 13,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}

class _DocesWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Paçocas ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/doces.jpeg',
          price: 13,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}

class _GeleiasWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Geleia de morango ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/geleia.jpeg',
          price: 13,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}

class _LinguicaWidget extends GetView<HomePageController> {
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
        const product = ProductEntity(
          name: 'Toscana ',
          description:
              'Eiusmod tempor et ipsum aliquip magna aliqua commodo ad Lorem.',
          image: 'assets/linguica.jpeg',
          price: 13,
        );

        return ProductCardWidget(
          onPressed: () async => controller.addToBag(product),
          name: product.name,
          description: product.description,
          image: product.image,
          price: product.price,
        );
      },
    );
  }
}
