// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'product_entity.dart';

class ProductEntityMapper extends ClassMapperBase<ProductEntity> {
  ProductEntityMapper._();

  static ProductEntityMapper? _instance;
  static ProductEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProductEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProductEntity';

  static String _$image(ProductEntity v) => v.image;
  static const Field<ProductEntity, String> _f$image = Field('image', _$image);
  static String _$name(ProductEntity v) => v.name;
  static const Field<ProductEntity, String> _f$name = Field('name', _$name);
  static String _$description(ProductEntity v) => v.description;
  static const Field<ProductEntity, String> _f$description =
      Field('description', _$description);
  static double _$price(ProductEntity v) => v.price;
  static const Field<ProductEntity, double> _f$price = Field('price', _$price);

  @override
  final MappableFields<ProductEntity> fields = const {
    #image: _f$image,
    #name: _f$name,
    #description: _f$description,
    #price: _f$price,
  };
  @override
  final bool ignoreNull = true;

  static ProductEntity _instantiate(DecodingData data) {
    return ProductEntity(
        image: data.dec(_f$image),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static ProductEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProductEntity>(map);
  }

  static ProductEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ProductEntity>(json);
  }
}

mixin ProductEntityMappable {
  String toJson() {
    return ProductEntityMapper.ensureInitialized()
        .encodeJson<ProductEntity>(this as ProductEntity);
  }

  Map<String, dynamic> toMap() {
    return ProductEntityMapper.ensureInitialized()
        .encodeMap<ProductEntity>(this as ProductEntity);
  }

  ProductEntityCopyWith<ProductEntity, ProductEntity, ProductEntity>
      get copyWith => _ProductEntityCopyWithImpl(
          this as ProductEntity, $identity, $identity);
  @override
  String toString() {
    return ProductEntityMapper.ensureInitialized()
        .stringifyValue(this as ProductEntity);
  }

  @override
  bool operator ==(Object other) {
    return ProductEntityMapper.ensureInitialized()
        .equalsValue(this as ProductEntity, other);
  }

  @override
  int get hashCode {
    return ProductEntityMapper.ensureInitialized()
        .hashValue(this as ProductEntity);
  }
}

extension ProductEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProductEntity, $Out> {
  ProductEntityCopyWith<$R, ProductEntity, $Out> get $asProductEntity =>
      $base.as((v, t, t2) => _ProductEntityCopyWithImpl(v, t, t2));
}

abstract class ProductEntityCopyWith<$R, $In extends ProductEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? image, String? name, String? description, double? price});
  ProductEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProductEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProductEntity, $Out>
    implements ProductEntityCopyWith<$R, ProductEntity, $Out> {
  _ProductEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProductEntity> $mapper =
      ProductEntityMapper.ensureInitialized();
  @override
  $R call({String? image, String? name, String? description, double? price}) =>
      $apply(FieldCopyWithData({
        if (image != null) #image: image,
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (price != null) #price: price
      }));
  @override
  ProductEntity $make(CopyWithData data) => ProductEntity(
      image: data.get(#image, or: $value.image),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      price: data.get(#price, or: $value.price));

  @override
  ProductEntityCopyWith<$R2, ProductEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProductEntityCopyWithImpl($value, $cast, t);
}
