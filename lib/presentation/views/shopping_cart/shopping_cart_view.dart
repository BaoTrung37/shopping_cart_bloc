import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingcart/blocs/cart/cart_bloc.dart';
import 'package:shoppingcart/router/app_routes.dart';
import 'package:shoppingcart/presentation/widgets/app_text_buton.dart';
import 'package:shoppingcart/presentation/widgets/dialog/notification_dialog.dart';
import 'package:shoppingcart/presentation/widgets/product_cart_item.dart';
import 'package:shoppingcart/presentation/utilities/enums/loading_status.dart';
import 'package:shoppingcart/presentation/utilities/extensions/number_format_extension.dart';

class ShoppingCartView extends StatefulWidget {
  const ShoppingCartView({super.key});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                                  context.read<CartBloc>().add(
                                        CartEvent.updatedProduct(
                                          cartProduct: cartProducts[index],
                                          quantity: value,
                                        ),
                                      );
                                },
                                product: cartProducts[index].product,
                                onRemoveTap: () {
                                  context.read<CartBloc>().add(
                                        CartEvent.removedProduct(
                                          cartProduct: cartProducts[index],
                                        ),
                                      );
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
                        Row(
                          children: [
                            const Text(
                              'Total price ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                              child: BlocConsumer<CartBloc, CartState>(
                                listener: (context, state) {
                                  // TODO: implement listener
                                },
                                builder: (context, state) {
                                  return Text(
                                    state.totalPrice.toCurrencyString(),
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        BlocListener<CartBloc, CartState>(
                          listener: (context, state) {},
                          child: AppTextButton(
                            isActive: state.cartProducts.isNotEmpty,
                            title: 'Order',
                            onTap: () {
                              context
                                  .read<CartBloc>()
                                  .add(const CartEvent.order());
                              showNotificationDialog(context,
                                  title: 'Order Successfully!', onTap: () {
                                Navigator.of(context).popUntil(
                                  ModalRoute.withName(AppRoutes.home),
                                );
                              });
                            },
                          ),
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
