part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();
  const factory CartState({
    @Default(LoadingStatus.initial) LoadingStatus status,
    @Default([]) List<CartProduct> cartProducts,
  }) = _CartState;

  int get totalQuantity => cartProducts.fold(
      0, (previousValue, element) => previousValue + element.quantity);
  int get totalPrice => cartProducts.fold(
      0,
      (previousValue, element) =>
          previousValue + element.product.price * element.quantity);
}
