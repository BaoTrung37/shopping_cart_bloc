// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/ui/widgets/app_text_buton.dart';
import 'package:shoppingcart/ui/widgets/product_cart_item.dart';

Future<void> showAddToCartBottomSheet(
  BuildContext context, {
  required Product product,
  required Function(int) onAddToCart,
}) async {
  await showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    builder: (context) {
      return _ContentAddToCartBottomSheet(
        product: product,
        onAddToCart: onAddToCart,
      );
    },
  );
}

class _ContentAddToCartBottomSheet extends StatefulWidget {
  final Product product;
  final Function(int) onAddToCart;

  const _ContentAddToCartBottomSheet({
    required this.product,
    required this.onAddToCart,
  });

  @override
  State<_ContentAddToCartBottomSheet> createState() =>
      _ContentAddToCartBottomSheetState();
}

class _ContentAddToCartBottomSheetState
    extends State<_ContentAddToCartBottomSheet> {
  int amount = 1;

  @override
  Widget build(BuildContext context) {
    debugPrint('render bottom sheet');
    debugPrint('amount12: $amount');
    var addProductToCartButton = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppTextButton(
        onTap: () {
          widget.onAddToCart(amount);
        },
        title: 'Add to card',
      ),
    );
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProductCartItem(
            product: widget.product,
            onAmountChanged: (value) {
              setState(() {
                amount = value;
              });
            },
            onRemoveTap: () {
              Navigator.pop(context);
            },
            elevation: 0,
            amount: amount,
          ),
          const SizedBox(height: 16),
          addProductToCartButton,
        ],
      ),
    );
  }
}
