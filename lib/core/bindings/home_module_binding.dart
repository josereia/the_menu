import 'package:get/get.dart';
import 'package:the_menu/modules/bag/presenter/bag_page_controller.dart';
import 'package:the_menu/modules/home/presenter/home_page_controller.dart';

class HomeModuleBinding implements Bindings {
  const HomeModuleBinding();

  @override
  void dependencies() {
    Get
      ..lazyPut(BagPageController.new, fenix: true)
      ..lazyPut(HomePageController.new);
  }
}
