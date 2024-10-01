import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/icon_button_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class CollapsedAppBarWidget extends StatelessWidget with ThemeMixin {
  const CollapsedAppBarWidget({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: metrics.small,
        horizontal: metrics.medium,
      ),
      decoration: BoxDecoration(color: colors.background),
      child: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Row(
          children: [
            IconButtonWidget(
              icon: SolarIconsOutline.arrowLeft,
              onPressed: () => Get.back<void>(),
            ),
            const SpacerWidget(direction: Axis.horizontal),
            TextWidget(
              title,
              type: TextWidgetType.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
