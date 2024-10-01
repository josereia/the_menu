import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';
import 'package:the_menu/core/widgets/cards/card_widget.dart';
import 'package:the_menu/core/widgets/image_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    required this.image,
    required this.name,
    required this.description,
    this.price = 0.0,
    this.onPressed,
    super.key,
  });

  final String image;
  final String name;
  final String description;
  final double price;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: CardWidget(
        height: 78,
        child: Row(
          children: [
            ImageWidget(width: 60, height: 60, uri: image),
            const SpacerWidget(direction: Axis.horizontal),
            Flexible(
              child: _InfoWidget(
                name: name,
                description: description,
                price: price,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget with ThemeMixin {
  const _InfoWidget({
    required this.name,
    required this.description,
    required this.price,
  });

  final String name;
  final String description;
  final double price;
  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final newPrice = price.toStringAsFixed(2).replaceAll('.', ',');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(name, type: TextWidgetType.titleLarge),
            TextWidget(
              description,
              color: colors.textAlt,
            ),
          ],
        ),
        const SpacerWidget(size: SpacerWidgetSize.small),
        TextWidget('R\$$newPrice', type: TextWidgetType.titleMedium),
      ],
    );
  }
}
