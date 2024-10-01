import 'package:get/get.dart';
import 'package:the_menu/core/domain/product_entity.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/modules/bag/presenter/bag_page_controller.dart';

class HomePageController extends GetxController {
  final _bagPageController = Get.find<BagPageController>();

  Future<void> addToBag(ProductEntity product) async {
    _bagPageController.add(product);
    await Get.toNamed<void>(AppRoutes.bag);
  }
}
