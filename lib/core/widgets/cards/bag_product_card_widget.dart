import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:the_menu/core/domain/bag_product_entity.dart';
import 'package:the_menu/core/widgets/buttons/icon_button_widget.dart';
import 'package:the_menu/core/widgets/cards/product_card_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class BagProductCardWidget extends StatelessWidget {
  const BagProductCardWidget({
    required this.entity,
    this.onAddPressed,
    this.onRemovePressed,
    super.key,
  });

  final BagProductEntity entity;
  final void Function()? onAddPressed;
  final void Function()? onRemovePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ProductCardWidget(
            image: entity.product.image,
            name: entity.product.name,
            description: entity.product.description,
            price: entity.product.price,
          ),
        ),
        const SpacerWidget(direction: Axis.horizontal),
        _ActionsWidget(
          quantity: entity.quantity,
          onAddPressed: onAddPressed,
          onRemovePressed: onRemovePressed,
        ),
      ],
    );
  }
}

class _ActionsWidget extends StatelessWidget {
  const _ActionsWidget({
    required this.quantity,
    required this.onAddPressed,
    required this.onRemovePressed,
  });

  final int quantity;
  final void Function()? onAddPressed;
  final void Function()? onRemovePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
          color: Colors.red[800],
          icon: Ionicons.remove_circle,
          onPressed: onRemovePressed,
        ),
        const SpacerWidget(
          direction: Axis.horizontal,
          size: SpacerWidgetSize.small,
        ),
        TextWidget(quantity.toString(), type: TextWidgetType.headlineSmall),
        const SpacerWidget(
          direction: Axis.horizontal,
          size: SpacerWidgetSize.small,
        ),
        IconButtonWidget(
          color: Colors.green[800],
          icon: Ionicons.add_circle,
          onPressed: onAddPressed,
        ),
      ],
    );
  }
}
