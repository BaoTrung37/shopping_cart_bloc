// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/ui/widgets/app_text_buton.dart';
import 'package:shoppingcart/ui/widgets/product_cart_item.dart';

Future<void> showAddToCartBottomSheet(
  BuildContext context, {
  required Product product,
  required VoidCallback onAddToCart,
  required ValueChanged<int> onAmountChanged,
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
        onAmountChanged: onAmountChanged,
      );
    },
  );
}

class _ContentAddToCartBottomSheet extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;
  final ValueChanged<int> onAmountChanged;

  const _ContentAddToCartBottomSheet({
    Key? key,
    required this.product,
    required this.onAddToCart,
    required this.onAmountChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var addProductToCartButton = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppTextButton(
        onTap: onAddToCart,
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
            product: product,
            onAmountChanged: onAmountChanged,
            onRemoveTap: () {
              Navigator.pop(context);
            },
            elevation: 0,
          ),
          const SizedBox(height: 16),
          addProductToCartButton,
        ],
      ),
    );
  }
}
