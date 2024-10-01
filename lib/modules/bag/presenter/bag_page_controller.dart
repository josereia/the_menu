import 'package:get/get.dart';
import 'package:the_menu/core/domain/bag_product_entity.dart';
import 'package:the_menu/core/domain/product_entity.dart';

class BagPageController extends GetxController {
  final Rx<List<BagProductEntity>> _products = Rx([]);

  List<BagProductEntity> get products => _products.value;

  void add(ProductEntity product) {
    final founded = _products.value.firstWhereOrNull(
      (p) => p.product == product,
    );

    if (founded != null) {
      final index = _products.value.indexOf(founded);
      final bagProduct = _products.value[index];

      final newBagProduct = bagProduct.copyWith(
        quantity: bagProduct.quantity + 1,
      );
      _products.value[index] = newBagProduct;
      _products.refresh();
      return;
    }

    _products.value.add(BagProductEntity(product: product, quantity: 1));
    _products.refresh();
  }

  void remove(int index) {
    final bagProduct = _products.value[index];

    if (bagProduct.quantity > 1) {
      final newProduct = bagProduct.copyWith(quantity: bagProduct.quantity - 1);
      _products.value[index] = newProduct;

      _products.refresh();
      return;
    }

    _products.value.removeAt(index);
    _products.refresh();
  }
}
