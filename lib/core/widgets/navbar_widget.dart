import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class NavbarWidget extends StatelessWidget with ThemeMixin {
  const NavbarWidget({
    this.current = 0,
    this.onChanged,
    super.key,
  });

  final int current;
  final void Function(int index)? onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: metrics.small,
        horizontal: metrics.medium,
      ),
      decoration: BoxDecoration(color: colors.background),
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ItemWidget(
              index: 0,
              current: current,
              text: 'Início',
              icon: SolarIconsOutline.home,
              activeIcon: SolarIconsBold.home,
              onChanged: (index) => onChanged?.call(index),
            ),
            _ItemWidget(
              index: 1,
              current: current,
              text: 'Pedidos',
              icon: SolarIconsOutline.documentText,
              activeIcon: SolarIconsBold.documentText,
              onChanged: (index) => onChanged?.call(index),
            ),
            _ItemWidget(
              index: 2,
              current: current,
              text: 'Notificações',
              icon: SolarIconsOutline.bell,
              activeIcon: SolarIconsBold.bell,
              onChanged: (index) => onChanged?.call(index),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget with ThemeMixin {
  const _ItemWidget({
    required this.index,
    required this.current,
    required this.text,
    required this.icon,
    required this.activeIcon,
    required this.onChanged,
  });

  final int index;
  final int current;
  final String text;
  final IconData icon;
  final IconData activeIcon;
  final void Function(int index) onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);
    final isActive = index == current;

    var newIcon = icon;
    var color = colors.textAlt;
    if (isActive) {
      newIcon = activeIcon;
      color = colors.primary;
    }

    return TouchableWidget(
      onPressed: () => onChanged(index),
      child: SizedBox(
        width: 66,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(newIcon, size: 24, color: color),
            SpacerWidget(value: metrics.small / 2),
            TextWidget(text, color: color, type: TextWidgetType.bodySmall),
          ],
        ),
      ),
    );
  }
}
