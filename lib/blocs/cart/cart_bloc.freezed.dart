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
    required TResult Function(CartProduct cartProduct, int quantity)
        addedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? addedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? addedProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartProductRemoved value) removedProduct,
    required TResult Function(_CartProductAdded value) addedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartProductRemoved value)? removedProduct,
    TResult? Function(_CartProductAdded value)? addedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartProductRemoved value)? removedProduct,
    TResult Function(_CartProductAdded value)? addedProduct,
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
abstract class _$$_CartLoadingCopyWith<$Res> {
  factory _$$_CartLoadingCopyWith(
          _$_CartLoading value, $Res Function(_$_CartLoading) then) =
      __$$_CartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartLoadingCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartLoading>
    implements _$$_CartLoadingCopyWith<$Res> {
  __$$_CartLoadingCopyWithImpl(
      _$_CartLoading _value, $Res Function(_$_CartLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartLoading implements _CartLoading {
  const _$_CartLoading();

  @override
  String toString() {
    return 'CartEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        addedProduct,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? addedProduct,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? addedProduct,
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
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartProductRemoved value) removedProduct,
    required TResult Function(_CartProductAdded value) addedProduct,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartProductRemoved value)? removedProduct,
    TResult? Function(_CartProductAdded value)? addedProduct,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartProductRemoved value)? removedProduct,
    TResult Function(_CartProductAdded value)? addedProduct,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoading implements CartEvent {
  const factory _CartLoading() = _$_CartLoading;
}

/// @nodoc
abstract class _$$_CartProductRemovedCopyWith<$Res> {
  factory _$$_CartProductRemovedCopyWith(_$_CartProductRemoved value,
          $Res Function(_$_CartProductRemoved) then) =
      __$$_CartProductRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProduct cartProduct});
}

/// @nodoc
class __$$_CartProductRemovedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartProductRemoved>
    implements _$$_CartProductRemovedCopyWith<$Res> {
  __$$_CartProductRemovedCopyWithImpl(
      _$_CartProductRemoved _value, $Res Function(_$_CartProductRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProduct = null,
  }) {
    return _then(_$_CartProductRemoved(
      cartProduct: null == cartProduct
          ? _value.cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ));
  }
}

/// @nodoc

class _$_CartProductRemoved implements _CartProductRemoved {
  const _$_CartProductRemoved({required this.cartProduct});

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
            other is _$_CartProductRemoved &&
            (identical(other.cartProduct, cartProduct) ||
                other.cartProduct == cartProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductRemovedCopyWith<_$_CartProductRemoved> get copyWith =>
      __$$_CartProductRemovedCopyWithImpl<_$_CartProductRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        addedProduct,
  }) {
    return removedProduct(cartProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? addedProduct,
  }) {
    return removedProduct?.call(cartProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? addedProduct,
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
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartProductRemoved value) removedProduct,
    required TResult Function(_CartProductAdded value) addedProduct,
  }) {
    return removedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartProductRemoved value)? removedProduct,
    TResult? Function(_CartProductAdded value)? addedProduct,
  }) {
    return removedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartProductRemoved value)? removedProduct,
    TResult Function(_CartProductAdded value)? addedProduct,
    required TResult orElse(),
  }) {
    if (removedProduct != null) {
      return removedProduct(this);
    }
    return orElse();
  }
}

abstract class _CartProductRemoved implements CartEvent {
  const factory _CartProductRemoved({required final CartProduct cartProduct}) =
      _$_CartProductRemoved;

  CartProduct get cartProduct;
  @JsonKey(ignore: true)
  _$$_CartProductRemovedCopyWith<_$_CartProductRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartProductAddedCopyWith<$Res> {
  factory _$$_CartProductAddedCopyWith(
          _$_CartProductAdded value, $Res Function(_$_CartProductAdded) then) =
      __$$_CartProductAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProduct cartProduct, int quantity});
}

/// @nodoc
class __$$_CartProductAddedCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CartProductAdded>
    implements _$$_CartProductAddedCopyWith<$Res> {
  __$$_CartProductAddedCopyWithImpl(
      _$_CartProductAdded _value, $Res Function(_$_CartProductAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProduct = null,
    Object? quantity = null,
  }) {
    return _then(_$_CartProductAdded(
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
}

/// @nodoc

class _$_CartProductAdded implements _CartProductAdded {
  const _$_CartProductAdded(
      {required this.cartProduct, required this.quantity});

  @override
  final CartProduct cartProduct;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addedProduct(cartProduct: $cartProduct, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProductAdded &&
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
  _$$_CartProductAddedCopyWith<_$_CartProductAdded> get copyWith =>
      __$$_CartProductAddedCopyWithImpl<_$_CartProductAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartProduct cartProduct) removedProduct,
    required TResult Function(CartProduct cartProduct, int quantity)
        addedProduct,
  }) {
    return addedProduct(cartProduct, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CartProduct cartProduct)? removedProduct,
    TResult? Function(CartProduct cartProduct, int quantity)? addedProduct,
  }) {
    return addedProduct?.call(cartProduct, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartProduct cartProduct)? removedProduct,
    TResult Function(CartProduct cartProduct, int quantity)? addedProduct,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(cartProduct, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartProductRemoved value) removedProduct,
    required TResult Function(_CartProductAdded value) addedProduct,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartLoading value)? loading,
    TResult? Function(_CartProductRemoved value)? removedProduct,
    TResult? Function(_CartProductAdded value)? addedProduct,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartProductRemoved value)? removedProduct,
    TResult Function(_CartProductAdded value)? addedProduct,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class _CartProductAdded implements CartEvent {
  const factory _CartProductAdded(
      {required final CartProduct cartProduct,
      required final int quantity}) = _$_CartProductAdded;

  CartProduct get cartProduct;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_CartProductAddedCopyWith<_$_CartProductAdded> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$_CartState implements _CartState {
  const _$_CartState(
      {this.status = LoadingStatus.initial,
      final List<CartProduct> cartProducts = const []})
      : _cartProducts = cartProducts;

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

abstract class _CartState implements CartState {
  const factory _CartState(
      {final LoadingStatus status,
      final List<CartProduct> cartProducts}) = _$_CartState;

  @override
  LoadingStatus get status;
  @override
  List<CartProduct> get cartProducts;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
