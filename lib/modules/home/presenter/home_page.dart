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
              tabs: ['Todos', 'Bebidas'],
              children: [_AllWidget(), _DrinksWidget()],
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
          image:
              'https://laticiniosholandes.com.br/wp-content/uploads/2021/09/4-1024x576.jpg',
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
              'https://www.campariacademy.com/pt-br/wp-content/uploads/sites/5/2022/08/cuba-libre-header-1920x1080-1-800x800.jpg',
          price: 13,
        );
      },
    );
  }
}
