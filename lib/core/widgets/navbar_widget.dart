import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<StatefulWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> with ThemeMixin {
  String current = Get.currentRoute;

  Future<void> change(String route) async {
    setState(() => current = route);
    await Get.toNamed<void>(route);
  }

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: metrics.small,
          horizontal: metrics.medium,
        ),
        decoration: BoxDecoration(color: colors.background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ItemWidget(
              text: 'Início',
              icon: SolarIconsOutline.home,
              activeIcon: SolarIconsBold.home,
              route: AppRoutes.home,
              current: current,
              onChanged: change,
            ),
            _ItemWidget(
              text: 'Pedidos',
              icon: SolarIconsOutline.documentText,
              activeIcon: SolarIconsBold.documentText,
              route: AppRoutes.orders,
              current: current,
              onChanged: change,
            ),
            _ItemWidget(
              text: 'Notificações',
              icon: SolarIconsOutline.bell,
              activeIcon: SolarIconsBold.bell,
              current: current,
              route: AppRoutes.notifications,
              onChanged: change,
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget with ThemeMixin {
  const _ItemWidget({
    required this.text,
    required this.icon,
    required this.activeIcon,
    required this.route,
    required this.current,
    required this.onChanged,
  });

  final String text;
  final IconData icon;
  final IconData activeIcon;
  final String route;
  final String current;
  final void Function(String route) onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);
    final isActive = current == route;

    var newIcon = icon;
    var color = colors.textAlt;
    if (isActive) {
      newIcon = activeIcon;
      color = colors.primary;
    }

    return TouchableWidget(
      onPressed: () => onChanged(route),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(newIcon, size: 24, color: color),
          SpacerWidget(value: metrics.small / 2),
          TextWidget(text, color: color, type: TextWidgetType.bodySmall),
        ],
      ),
    );
  }
}
