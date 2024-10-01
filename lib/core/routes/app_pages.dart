import 'package:get/get.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/modules/home/presenter/home_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'Início',
      name: AppRoutes.home,
      page: HomePage.new,
    ),
    GetPage<void>(
      title: 'Pedidos',
      name: AppRoutes.orders,
      page: HomePage.new,
    ),
    GetPage<void>(
      title: 'Notificações',
      name: AppRoutes.notifications,
      page: HomePage.new,
    ),
  ];
}
