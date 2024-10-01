import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/navbar_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/modules/home/presenter/home_page.dart';
import 'package:the_menu/modules/notifications/presenter/notifications_page.dart';
import 'package:the_menu/modules/orders/presenter/orders_page_widget.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with ThemeMixin {
  int current = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics(context);

    return PageWidget(
      padding: EdgeInsets.zero,
      navBar: NavbarWidget(
        current: current,
        onChanged: (index) => controller.animateToPage(
          index,
          curve: metrics.curve,
          duration: metrics.duration,
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) => setState(() => current = value),
        children: const [
          HomePage(),
          OrdersPage(),
          NotificationsPage(),
        ],
      ),
    );
  }
}
