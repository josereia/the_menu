import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<StatefulWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> with ThemeMixin {
  void change(String route) => setState(() => Get.toNamed<void>(route));

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);

    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Container(
        decoration: BoxDecoration(color: colors.background),
        height: 80,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ItemWidget(
              icon: SolarIconsOutline.bag4,
              text: 'Sacola',
              route: AppRoutes.menu,
              onChanged: change,
            ),
            _ItemWidget(
              icon: SolarIconsOutline.documentText,
              text: 'Pedido',
              route: AppRoutes.orders,
              onChanged: change,
            ),
            _ItemWidget(
              icon: SolarIconsOutline.bell,
              text: 'Notificação',
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
    required this.icon,
    required this.text,
    required this.route,
    required this.onChanged,
  });

  final IconData icon;
  final String text;
  final String route;
  final void Function(String route) onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final isActive = Get.currentRoute == route;

    var color = colors.text;
    if (isActive) color = colors.primary;

    return GestureDetector(
      onTap: () => onChanged(route),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 32,
            color: color,
          ),
          TextWidget(
            text,
            type: TextWidgetType.bodySmall,
          ),
        ],
      ),
    );
  }
}
