import 'package:flutter/material.dart';
import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/ui/widgets/app_text_buton.dart';
import 'package:shoppingcart/ui/widgets/product_cart_item.dart';

class ShoppingCartView extends StatefulWidget {
  const ShoppingCartView({super.key});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart (3)'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        actions: const [],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 180,
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 5,
                    (context, index) => ProductCartItem(
                      onAmountChanged: (value) {},
                      product: Product(
                        id: '1',
                        title: 'Product #11',
                        price: 170000,
                        imageUrl: 'assets/images/product_0.jpg',
                      ),
                      onRemoveTap: () {
                        //
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Total price ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '170000 đ',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                AppTextButton(
                  title: 'Order',
                  onTap: () {
                    //
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
