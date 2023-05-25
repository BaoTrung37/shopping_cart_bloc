part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loading() = _CartLoading;
  const factory CartEvent.removedProduct({
    required CartProduct cartProduct,
  }) = _CartProductRemoved;
  const factory CartEvent.addedProduct({
    required CartProduct cartProduct,
    required int quantity,
  }) = _CartProductAdded;
}
