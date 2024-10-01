// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bag_product_entity.dart';

class BagProductEntityMapper extends ClassMapperBase<BagProductEntity> {
  BagProductEntityMapper._();

  static BagProductEntityMapper? _instance;
  static BagProductEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BagProductEntityMapper._());
      ProductEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BagProductEntity';

  static ProductEntity _$product(BagProductEntity v) => v.product;
  static const Field<BagProductEntity, ProductEntity> _f$product =
      Field('product', _$product);
  static int _$quantity(BagProductEntity v) => v.quantity;
  static const Field<BagProductEntity, int> _f$quantity =
      Field('quantity', _$quantity);

  @override
  final MappableFields<BagProductEntity> fields = const {
    #product: _f$product,
    #quantity: _f$quantity,
  };
  @override
  final bool ignoreNull = true;

  static BagProductEntity _instantiate(DecodingData data) {
    return BagProductEntity(
        product: data.dec(_f$product), quantity: data.dec(_f$quantity));
  }

  @override
  final Function instantiate = _instantiate;

  static BagProductEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BagProductEntity>(map);
  }

  static BagProductEntity fromJson(String json) {
    return ensureInitialized().decodeJson<BagProductEntity>(json);
  }
}

mixin BagProductEntityMappable {
  String toJson() {
    return BagProductEntityMapper.ensureInitialized()
        .encodeJson<BagProductEntity>(this as BagProductEntity);
  }

  Map<String, dynamic> toMap() {
    return BagProductEntityMapper.ensureInitialized()
        .encodeMap<BagProductEntity>(this as BagProductEntity);
  }

  BagProductEntityCopyWith<BagProductEntity, BagProductEntity, BagProductEntity>
      get copyWith => _BagProductEntityCopyWithImpl(
          this as BagProductEntity, $identity, $identity);
  @override
  String toString() {
    return BagProductEntityMapper.ensureInitialized()
        .stringifyValue(this as BagProductEntity);
  }

  @override
  bool operator ==(Object other) {
    return BagProductEntityMapper.ensureInitialized()
        .equalsValue(this as BagProductEntity, other);
  }

  @override
  int get hashCode {
    return BagProductEntityMapper.ensureInitialized()
        .hashValue(this as BagProductEntity);
  }
}

extension BagProductEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BagProductEntity, $Out> {
  BagProductEntityCopyWith<$R, BagProductEntity, $Out>
      get $asBagProductEntity =>
          $base.as((v, t, t2) => _BagProductEntityCopyWithImpl(v, t, t2));
}

abstract class BagProductEntityCopyWith<$R, $In extends BagProductEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ProductEntityCopyWith<$R, ProductEntity, ProductEntity> get product;
  $R call({ProductEntity? product, int? quantity});
  BagProductEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BagProductEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BagProductEntity, $Out>
    implements BagProductEntityCopyWith<$R, BagProductEntity, $Out> {
  _BagProductEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BagProductEntity> $mapper =
      BagProductEntityMapper.ensureInitialized();
  @override
  ProductEntityCopyWith<$R, ProductEntity, ProductEntity> get product =>
      $value.product.copyWith.$chain((v) => call(product: v));
  @override
  $R call({ProductEntity? product, int? quantity}) => $apply(FieldCopyWithData({
        if (product != null) #product: product,
        if (quantity != null) #quantity: quantity
      }));
  @override
  BagProductEntity $make(CopyWithData data) => BagProductEntity(
      product: data.get(#product, or: $value.product),
      quantity: data.get(#quantity, or: $value.quantity));

  @override
  BagProductEntityCopyWith<$R2, BagProductEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BagProductEntityCopyWithImpl($value, $cast, t);
}
