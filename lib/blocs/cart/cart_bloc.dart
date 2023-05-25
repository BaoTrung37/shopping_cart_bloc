// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shoppingcart/models/cart_product.dart';
import 'package:shoppingcart/repositories/cart/cart_category.dart';
import 'package:shoppingcart/utils/enums/loading_status.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;
  CartBloc({
    required this.cartRepository,
  }) : super(const CartState()) {
    on<CartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
