import 'package:get/get.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/modules/root/presenter/root_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'Root',
      name: AppRoutes.root,
      page: RootPage.new,
    ),
  ];
}
