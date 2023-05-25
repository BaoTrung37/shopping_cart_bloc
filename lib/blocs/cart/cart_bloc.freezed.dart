// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(Product product, int quantity) addedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        updatedProduct,
    required TResult Function() order,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(Product product, int quantity)? addedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult? Function()? order,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(Product product, int quantity)? addedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult Function()? order,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCart value) loading,
    required TResult Function(_RemovedCartProduct value) removedProduct,
    required TResult Function(_AddedCartProduct value) addedProduct,
    required TResult Function(_UpdatedCartProduct value) updatedProduct,
    required TResult Function(_OrderCartProduct value) order,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingCart value)? loading,
    TResult? Function(_RemovedCartProduct value)? removedProduct,
    TResult? Function(_AddedCartProduct value)? addedProduct,
    TResult? Function(_UpdatedCartProduct value)? updatedProduct,
    TResult? Function(_OrderCartProduct value)? order,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCart value)? loading,
    TResult Function(_RemovedCartProduct value)? removedProduct,
    TResult Function(_AddedCartProduct value)? addedProduct,
    TResult Function(_UpdatedCartProduct value)? updatedProduct,
    TResult Function(_OrderCartProduct value)? order,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCartCopyWith<$Res> {
  factory _$$_LoadingCartCopyWith(
          _$_LoadingCart value, $Res Function(_$_LoadingCart) then) =
      __$$_LoadingCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_LoadingCart>
    implements _$$_LoadingCartCopyWith<$Res> {
  __$$_LoadingCartCopyWithImpl(
      _$_LoadingCart _value, $Res Function(_$_LoadingCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingCart implements _LoadingCart {
  const _$_LoadingCart();

  @override
  String toString() {
    return 'CartEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(Product product, int quantity) addedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        updatedProduct,
    required TResult Function() order,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(Product product, int quantity)? addedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult? Function()? order,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(Product product, int quantity)? addedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult Function()? order,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCart value) loading,
    required TResult Function(_RemovedCartProduct value) removedProduct,
    required TResult Function(_AddedCartProduct value) addedProduct,
    required TResult Function(_UpdatedCartProduct value) updatedProduct,
    required TResult Function(_OrderCartProduct value) order,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingCart value)? loading,
    TResult? Function(_RemovedCartProduct value)? removedProduct,
    TResult? Function(_AddedCartProduct value)? addedProduct,
    TResult? Function(_UpdatedCartProduct value)? updatedProduct,
    TResult? Function(_OrderCartProduct value)? order,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCart value)? loading,
    TResult Function(_RemovedCartProduct value)? removedProduct,
    TResult Function(_AddedCartProduct value)? addedProduct,
    TResult Function(_UpdatedCartProduct value)? updatedProduct,
    TResult Function(_OrderCartProduct value)? order,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCart implements CartEvent {
  const factory _LoadingCart() = _$_LoadingCart;
}

/// @nodoc
abstract class _$$_RemovedCartProductCopyWith<$Res> {
  factory _$$_RemovedCartProductCopyWith(_$_RemovedCartProduct value,
          $Res Function(_$_RemovedCartProduct) then) =
      __$$_RemovedCartProductCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProduct cartProduct});

  $CartProductCopyWith<$Res> get cartProduct;
}

/// @nodoc
class __$$_RemovedCartProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemovedCartProduct>
    implements _$$_RemovedCartProductCopyWith<$Res> {
  __$$_RemovedCartProductCopyWithImpl(
      _$_RemovedCartProduct _value, $Res Function(_$_RemovedCartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProduct = null,
  }) {
    return _then(_$_RemovedCartProduct(
      cartProduct: null == cartProduct
          ? _value.cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartProductCopyWith<$Res> get cartProduct {
    return $CartProductCopyWith<$Res>(_value.cartProduct, (value) {
      return _then(_value.copyWith(cartProduct: value));
    });
  }
}

/// @nodoc

class _$_RemovedCartProduct implements _RemovedCartProduct {
  const _$_RemovedCartProduct({required this.cartProduct});

  @override
  final CartProduct cartProduct;

  @override
  String toString() {
    return 'CartEvent.removedProduct(cartProduct: $cartProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemovedCartProduct &&
            (identical(other.cartProduct, cartProduct) ||
                other.cartProduct == cartProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemovedCartProductCopyWith<_$_RemovedCartProduct> get copyWith =>
      __$$_RemovedCartProductCopyWithImpl<_$_RemovedCartProduct>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(Product product, int quantity) addedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        updatedProduct,
    required TResult Function() order,
  }) {
    return removedProduct(cartProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(Product product, int quantity)? addedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult? Function()? order,
  }) {
    return removedProduct?.call(cartProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(Product product, int quantity)? addedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult Function()? order,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(cartProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCart value) loading,
    required TResult Function(_RemovedCartProduct value) removedProduct,
    required TResult Function(_AddedCartProduct value) addedProduct,
    required TResult Function(_UpdatedCartProduct value) updatedProduct,
    required TResult Function(_OrderCartProduct value) order,
  }) {
    return removedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingCart value)? loading,
    TResult? Function(_RemovedCartProduct value)? removedProduct,
    TResult? Function(_AddedCartProduct value)? addedProduct,
    TResult? Function(_UpdatedCartProduct value)? updatedProduct,
    TResult? Function(_OrderCartProduct value)? order,
  }) {
    return removedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCart value)? loading,
    TResult Function(_RemovedCartProduct value)? removedProduct,
    TResult Function(_AddedCartProduct value)? addedProduct,
    TResult Function(_UpdatedCartProduct value)? updatedProduct,
    TResult Function(_OrderCartProduct value)? order,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(this);
    }
    return orElse();
  }
}

abstract class _RemovedCartProduct implements CartEvent {
  const factory _RemovedCartProduct({required final CartProduct cartProduct}) =
      _$_RemovedCartProduct;

  CartProduct get cartProduct;
  @JsonKey(ignore: true)
  _$$_RemovedCartProductCopyWith<_$_RemovedCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddedCartProductCopyWith<$Res> {
  factory _$$_AddedCartProductCopyWith(
          _$_AddedCartProduct value, $Res Function(_$_AddedCartProduct) then) =
      __$$_AddedCartProductCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, int quantity});
}

/// @nodoc
class __$$_AddedCartProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddedCartProduct>
    implements _$$_AddedCartProductCopyWith<$Res> {
  __$$_AddedCartProductCopyWithImpl(
      _$_AddedCartProduct _value, $Res Function(_$_AddedCartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$_AddedCartProduct(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddedCartProduct implements _AddedCartProduct {
  const _$_AddedCartProduct({required this.product, required this.quantity});

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addedProduct(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedCartProduct &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddedCartProductCopyWith<_$_AddedCartProduct> get copyWith =>
      __$$_AddedCartProductCopyWithImpl<_$_AddedCartProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(Product product, int quantity) addedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        updatedProduct,
    required TResult Function() order,
  }) {
    return addedProduct(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(Product product, int quantity)? addedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult? Function()? order,
  }) {
    return addedProduct?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(Product product, int quantity)? addedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult Function()? order,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCart value) loading,
    required TResult Function(_RemovedCartProduct value) removedProduct,
    required TResult Function(_AddedCartProduct value) addedProduct,
    required TResult Function(_UpdatedCartProduct value) updatedProduct,
    required TResult Function(_OrderCartProduct value) order,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingCart value)? loading,
    TResult? Function(_RemovedCartProduct value)? removedProduct,
    TResult? Function(_AddedCartProduct value)? addedProduct,
    TResult? Function(_UpdatedCartProduct value)? updatedProduct,
    TResult? Function(_OrderCartProduct value)? order,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCart value)? loading,
    TResult Function(_RemovedCartProduct value)? removedProduct,
    TResult Function(_AddedCartProduct value)? addedProduct,
    TResult Function(_UpdatedCartProduct value)? updatedProduct,
    TResult Function(_OrderCartProduct value)? order,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class _AddedCartProduct implements CartEvent {
  const factory _AddedCartProduct(
      {required final Product product,
      required final int quantity}) = _$_AddedCartProduct;

  Product get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_AddedCartProductCopyWith<_$_AddedCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatedCartProductCopyWith<$Res> {
  factory _$$_UpdatedCartProductCopyWith(_$_UpdatedCartProduct value,
          $Res Function(_$_UpdatedCartProduct) then) =
      __$$_UpdatedCartProductCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProduct cartProduct, int quantity});

  $CartProductCopyWith<$Res> get cartProduct;
}

/// @nodoc
class __$$_UpdatedCartProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_UpdatedCartProduct>
    implements _$$_UpdatedCartProductCopyWith<$Res> {
  __$$_UpdatedCartProductCopyWithImpl(
      _$_UpdatedCartProduct _value, $Res Function(_$_UpdatedCartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProduct = null,
    Object? quantity = null,
  }) {
    return _then(_$_UpdatedCartProduct(
      cartProduct: null == cartProduct
          ? _value.cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as CartProduct,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartProductCopyWith<$Res> get cartProduct {
    return $CartProductCopyWith<$Res>(_value.cartProduct, (value) {
      return _then(_value.copyWith(cartProduct: value));
    });
  }
}

/// @nodoc

class _$_UpdatedCartProduct implements _UpdatedCartProduct {
  const _$_UpdatedCartProduct(
      {required this.cartProduct, required this.quantity});

  @override
  final CartProduct cartProduct;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updatedProduct(cartProduct: $cartProduct, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedCartProduct &&
            (identical(other.cartProduct, cartProduct) ||
                other.cartProduct == cartProduct) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartProduct, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedCartProductCopyWith<_$_UpdatedCartProduct> get copyWith =>
      __$$_UpdatedCartProductCopyWithImpl<_$_UpdatedCartProduct>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(Product product, int quantity) addedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        updatedProduct,
    required TResult Function() order,
  }) {
    return updatedProduct(cartProduct, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(Product product, int quantity)? addedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult? Function()? order,
  }) {
    return updatedProduct?.call(cartProduct, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(Product product, int quantity)? addedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult Function()? order,
    required TResult orElse(),
  }) {
    if (updatedProduct != null) {
      return updatedProduct(cartProduct, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCart value) loading,
    required TResult Function(_RemovedCartProduct value) removedProduct,
    required TResult Function(_AddedCartProduct value) addedProduct,
    required TResult Function(_UpdatedCartProduct value) updatedProduct,
    required TResult Function(_OrderCartProduct value) order,
  }) {
    return updatedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingCart value)? loading,
    TResult? Function(_RemovedCartProduct value)? removedProduct,
    TResult? Function(_AddedCartProduct value)? addedProduct,
    TResult? Function(_UpdatedCartProduct value)? updatedProduct,
    TResult? Function(_OrderCartProduct value)? order,
  }) {
    return updatedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCart value)? loading,
    TResult Function(_RemovedCartProduct value)? removedProduct,
    TResult Function(_AddedCartProduct value)? addedProduct,
    TResult Function(_UpdatedCartProduct value)? updatedProduct,
    TResult Function(_OrderCartProduct value)? order,
    required TResult orElse(),
  }) {
    if (updatedProduct != null) {
      return updatedProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdatedCartProduct implements CartEvent {
  const factory _UpdatedCartProduct(
      {required final CartProduct cartProduct,
      required final int quantity}) = _$_UpdatedCartProduct;

  CartProduct get cartProduct;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_UpdatedCartProductCopyWith<_$_UpdatedCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OrderCartProductCopyWith<$Res> {
  factory _$$_OrderCartProductCopyWith(
          _$_OrderCartProduct value, $Res Function(_$_OrderCartProduct) then) =
      __$$_OrderCartProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OrderCartProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_OrderCartProduct>
    implements _$$_OrderCartProductCopyWith<$Res> {
  __$$_OrderCartProductCopyWithImpl(
      _$_OrderCartProduct _value, $Res Function(_$_OrderCartProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OrderCartProduct implements _OrderCartProduct {
  const _$_OrderCartProduct();

  @override
  String toString() {
    return 'CartEvent.order()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OrderCartProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(Product product, int quantity) addedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        updatedProduct,
    required TResult Function() order,
  }) {
    return order();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(Product product, int quantity)? addedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult? Function()? order,
  }) {
    return order?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(Product product, int quantity)? addedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? updatedProduct,
    TResult Function()? order,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingCart value) loading,
    required TResult Function(_RemovedCartProduct value) removedProduct,
    required TResult Function(_AddedCartProduct value) addedProduct,
    required TResult Function(_UpdatedCartProduct value) updatedProduct,
    required TResult Function(_OrderCartProduct value) order,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingCart value)? loading,
    TResult? Function(_RemovedCartProduct value)? removedProduct,
    TResult? Function(_AddedCartProduct value)? addedProduct,
    TResult? Function(_UpdatedCartProduct value)? updatedProduct,
    TResult? Function(_OrderCartProduct value)? order,
  }) {
    return order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingCart value)? loading,
    TResult Function(_RemovedCartProduct value)? removedProduct,
    TResult Function(_AddedCartProduct value)? addedProduct,
    TResult Function(_UpdatedCartProduct value)? updatedProduct,
    TResult Function(_OrderCartProduct value)? order,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this);
    }
    return orElse();
  }
}

abstract class _OrderCartProduct implements CartEvent {
  const factory _OrderCartProduct() = _$_OrderCartProduct;
}

/// @nodoc
mixin _$CartState {
  LoadingStatus get status => throw _privateConstructorUsedError;
  List<CartProduct> get cartProducts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({LoadingStatus status, List<CartProduct> cartProducts});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cartProducts = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoadingStatus status, List<CartProduct> cartProducts});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartState>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cartProducts = null,
  }) {
    return _then(_$_CartState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadingStatus,
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ));
  }
}

/// @nodoc

class _$_CartState extends _CartState {
  const _$_CartState(
      {this.status = LoadingStatus.initial,
      final List<CartProduct> cartProducts = const []})
      : _cartProducts = cartProducts,
        super._();

  @override
  @JsonKey()
  final LoadingStatus status;
  final List<CartProduct> _cartProducts;
  @override
  @JsonKey()
  List<CartProduct> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  String toString() {
    return 'CartState(status: $status, cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_cartProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState extends CartState {
  const factory _CartState(
      {final LoadingStatus status,
      final List<CartProduct> cartProducts}) = _$_CartState;
  const _CartState._() : super._();

  @override
  LoadingStatus get status;
  @override
  List<CartProduct> get cartProducts;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
