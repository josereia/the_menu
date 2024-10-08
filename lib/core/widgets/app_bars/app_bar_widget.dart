import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/widgets/badge_widget.dart';
import 'package:the_menu/core/widgets/image_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _BannerWidget(),
        SpacerWidget(),
        _InfoWidget(),
      ],
    );
  }
}

class _BannerWidget extends StatelessWidget {
  const _BannerWidget();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomLeft,
      children: [
        ImageWidget(
          height: 200,
          width: double.infinity,
          uri: 'assets/store.jpeg',
        ),
        ImageWidget(
          width: 100,
          height: 100,
          uri: 'assets/logo.png',
        ),
      ],
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget('Bugert', type: TextWidgetType.headlineLarge),
            BadgeWidget(text: 'Aberto'),
          ],
        ),
        SpacerWidget(size: SpacerWidgetSize.small),
        Row(
          children: [
            Icon(SolarIconsOutline.mapPoint),
            SpacerWidget(
              direction: Axis.horizontal,
              size: SpacerWidgetSize.small,
            ),
            Text('Rua, nº 0, Bairro - Cidade, SC'),
          ],
        ),
        SpacerWidget(size: SpacerWidgetSize.small),
        Row(
          children: [
            Icon(SolarIconsOutline.calendar),
            SpacerWidget(
              direction: Axis.horizontal,
              size: SpacerWidgetSize.small,
            ),
            Text('Seg - Sex'),
          ],
        ),
        SpacerWidget(size: SpacerWidgetSize.small),
        Row(
          children: [
            Icon(SolarIconsOutline.clockCircle),
            SpacerWidget(
              direction: Axis.horizontal,
              size: SpacerWidgetSize.small,
            ),
            Text('08h - 18h'),
          ],
        ),
      ],
    );
  }
}
