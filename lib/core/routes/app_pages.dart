import 'package:get/get.dart';
import 'package:the_menu/core/bindings/home_module_binding.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/modules/bag/presenter/bag_page.dart';
import 'package:the_menu/modules/checkout/checkout_page.dart';
import 'package:the_menu/modules/login/login_page.dart';
import 'package:the_menu/modules/root/presenter/root_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'Root',
      name: AppRoutes.root,
      page: RootPage.new,
      bindings: const [HomeModuleBinding()],
    ),
    GetPage<void>(
      title: 'Bag',
      name: AppRoutes.bag,
      page: BagPage.new,
    ),
    GetPage<void>(
      title: 'Login',
      name: AppRoutes.login,
      page: LoginPage.new,
    ),
    GetPage<void>(
      title: 'checkout',
      name: AppRoutes.checkout,
      page: CheckoutPage.new,
    ),
  ];
}
