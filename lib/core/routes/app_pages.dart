import 'package:get/get.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/modules/menu/presenter/menu_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'Menu',
      name: AppRoutes.menu,
      page: MenuPage.new,
    ),
    GetPage<void>(
      title: 'orders',
      name: AppRoutes.orders,
      page: MenuPage.new,
    ),
    GetPage<void>(
      title: 'notifications',
      name: AppRoutes.notifications,
      page: MenuPage.new,
    ),
  ];
}
