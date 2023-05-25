// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shoppingcart/models/cart_product.dart';
import 'package:shoppingcart/models/product.dart';
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
    on<CartEvent>((event, emit) async {
      await event.map(
        loading: (_) async => await _loading(emit),
        removedProduct: (event) async => await removedProduct(event, emit),
        addedProduct: (event) async => await addedProduct(event, emit),
      );
    });
  }

  _loading(Emitter<CartState> emit) async {
    try {
      emit(state.copyWith(status: LoadingStatus.inProgress));
      await Future.delayed(const Duration(seconds: 2));

      var cartProducts = await cartRepository.getAllProductInCart();
      emit(
        state.copyWith(
          status: LoadingStatus.success,
          cartProducts: cartProducts,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: LoadingStatus.error));
    }
  }

  addedProduct(_CartProductAdded event, Emitter<CartState> emit) async {
    try {
      debugPrint('cartProduct: ${event.product.title}');

      var cartProducts = state.cartProducts.toList();

      final isProductInCart = cartProducts
          .where((element) => element.product.id == event.product.id)
          .toList()
          .isNotEmpty;

      if (isProductInCart) {
        cartProducts = cartProducts
            .where((element) => element.product.id == event.product.id)
            .toList()
            .map((e) => e.copyWith(quantity: e.quantity + 1))
            .toList();
      } else {
        cartProducts = cartProducts
          ..add(CartProduct(
            product: event.product,
            quantity: event.quantity,
          ));
      }

      emit(
        state.copyWith(
          status: LoadingStatus.success,
          cartProducts: cartProducts,
        ),
      );
      debugPrint('cartProduct22: ${cartProducts.length}');
    } catch (e) {
      emit(state.copyWith(status: LoadingStatus.error));
    }
  }

  removedProduct(_CartProductRemoved event, Emitter<CartState> emit) async {
    // try {
    //   var cartProduct = state.cartProducts
    //     ..removeWhere((element) => element.product.id == event.cartProduct.id);

    //   emit(
    //     state.copyWith(
    //       status: LoadingStatus.success,
    //       cartProducts: cartProduct,
    //     ),
    //   );
    // } catch (e) {
    //   emit(state.copyWith(status: LoadingStatus.error));
    // }
  }
}
