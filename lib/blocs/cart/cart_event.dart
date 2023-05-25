part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loading() = _LoadingCart;
  const factory CartEvent.removedProduct({
    required CartProduct cartProduct,
  }) = _RemovedCartProduct;
  const factory CartEvent.addedProduct({
    required Product product,
    required int quantity,
  }) = _AddedCartProduct;
  const factory CartEvent.updatedProduct({
    required CartProduct cartProduct,
    required int quantity,
  }) = _UpdatedCartProduct;

  const factory CartEvent.order() = _OrderCartProduct;
}
