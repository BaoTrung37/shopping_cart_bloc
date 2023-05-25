part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(LoadingStatus.initial) LoadingStatus status,
    @Default([]) List<CartProduct> cartProducts,
  }) = _CartState;
}
