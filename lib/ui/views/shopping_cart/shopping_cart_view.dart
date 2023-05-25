import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingcart/blocs/cart/cart_bloc.dart';
import 'package:shoppingcart/ui/widgets/app_text_buton.dart';
import 'package:shoppingcart/ui/widgets/product_cart_item.dart';
import 'package:shoppingcart/utils/enums/loading_status.dart';

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
        title: BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            //
          },
          builder: (context, state) {
            return Text('Cart (${state.totalQuantity})');
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Builder(
        builder: (context) {
          return BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state.status == LoadingStatus.inProgress) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final cartProducts = state.cartProducts;
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 200,
                    child: CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: cartProducts.length,
                            (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: ProductCartItem(
                                amount: cartProducts[index].quantity,
                                onAmountChanged: (value) {
                                  //
                                },
                                product: cartProducts[index].product,
                                onRemoveTap: () {
                                  //
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
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
              );
            },
          );
        },
      ),
    );
  }
}
