import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/widgets/app_bars/collapsed_app_bar_widget.dart';
import 'package:the_menu/core/widgets/buttons/button_widget.dart';
import 'package:the_menu/core/widgets/cards/bag_product_card_widget.dart';
import 'package:the_menu/core/widgets/empty_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';
import 'package:the_menu/modules/bag/presenter/bag_page_controller.dart';

class BagPage extends GetView<BagPageController> {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      appBar: const CollapsedAppBarWidget(title: 'Sacola'),
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Column(
          children: [
            const Expanded(child: _ProductsWidget()),
            const _SummaryWidget(),
            const SpacerWidget(),
            Obx(
              () => ButtonWidget(
                text: 'Finalizar compra',
                icon: SolarIconsOutline.cartCheck,
                isEnabled: controller.products.isNotEmpty,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductsWidget extends GetView<BagPageController> {
  const _ProductsWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final products = controller.products;
      return EmptyWidget(
        isEmpty: products.isEmpty,
        message: 'Sua sacola está vazia!',
        child: ListView.separated(
          itemCount: products.length,
          separatorBuilder: (_, __) => const SpacerWidget(
            size: SpacerWidgetSize.small,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return BagProductCardWidget(
              entity: product,
              onAddPressed: () => controller.add(product.product),
              onRemovePressed: () => controller.remove(index),
            );
          },
        ),
      );
    });
  }
}

class _SummaryWidget extends GetView<BagPageController> {
  const _SummaryWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var total = 0.0;
      var quantity = 0;

      for (final product in controller.products) {
        quantity += product.quantity;
        total += product.product.price * product.quantity;
      }

      return Column(
        children: [
          Row(
            children: [
              const TextWidget(
                'Quantidade: ',
                type: TextWidgetType.titleMedium,
              ),
              TextWidget(quantity.toString()),
            ],
          ),
          Row(
            children: [
              const TextWidget('Total: ', type: TextWidgetType.titleMedium),
              TextWidget('R\$${total.toString().replaceAll('.', ',')}'),
            ],
          ),
        ],
      );
    });
  }
}
