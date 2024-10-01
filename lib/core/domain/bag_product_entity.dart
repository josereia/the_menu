import 'package:dart_mappable/dart_mappable.dart';
import 'package:the_menu/core/domain/product_entity.dart';

part 'bag_product_entity.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class BagProductEntity with BagProductEntityMappable {
  const BagProductEntity({
    required this.product,
    required this.quantity,
  });

  final int quantity;
  final ProductEntity product;
}
