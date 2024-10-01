import 'package:dart_mappable/dart_mappable.dart';

part 'product_entity.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class ProductEntity with ProductEntityMappable {
  const ProductEntity({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  final String image;
  final String name;
  final String description;
  final double price;
}
