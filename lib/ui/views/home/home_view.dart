// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingcart/blocs/cart/cart_bloc.dart';

import 'package:shoppingcart/blocs/home/home_bloc.dart';
import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/router/app_routes.dart';
import 'package:shoppingcart/ui/widgets/add_to_cart_bottom_sheet.dart';
import 'package:shoppingcart/ui/widgets/product_card_item.dart';
import 'package:shoppingcart/utils/enums/loading_status.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var shoppingCartButton = IconButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.shoppingCart);
      },
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          const Icon(Icons.shopping_cart_outlined),
          Positioned(
            bottom: -4,
            left: -4,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.redAccent,
              child: BlocConsumer<CartBloc, CartState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Text(
                    state.totalQuantity.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        actions: [
          shoppingCartButton,
        ],
      ),
      body: const _HomeContent(),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    var hotProductTitle = SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            const Text(
              'HOT Products',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            SvgPicture.asset(
              'assets/icons/fire.svg',
              height: 24,
              width: 24,
            ),
          ],
        ),
      ),
    );

    var allProductTitle = const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Text(
          'All Products',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    // debugPrint('HomeContent build');

    return Builder(
      builder: (context) => BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == LoadingStatus.inProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final hotProducts = state.hotProducts;
          final allProducts = state.allProducts;
          return CustomScrollView(
            slivers: [
              hotProductTitle,
              _HotProductListView(hotProducts: hotProducts),
              allProductTitle,
              _AllProductGridView(allProducts: allProducts),
            ],
          );
        },
      ),
    );
  }
}

class _AllProductGridView extends StatelessWidget {
  const _AllProductGridView({
    Key? key,
    required this.allProducts,
  }) : super(key: key);

  final List<Product> allProducts;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
      ),
      itemCount: allProducts.length,
      itemBuilder: (context, index) {
        final product = allProducts[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ProductCardItem(
            height: 200,
            width: double.infinity,
            product: product,
            onTap: () async {
              await showAddToCartBottomSheet(
                context,
                product: product,
                onAddToCart: (value) {
                  context.read<CartBloc>().add(
                        CartEvent.addedProduct(
                          product: product,
                          quantity: value,
                        ),
                      );
                },
              );
            },
          ),
        );
      },
    );
  }
}

class _HotProductListView extends StatelessWidget {
  const _HotProductListView({
    required this.hotProducts,
  });

  final List<Product> hotProducts;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 3 + 8;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotProducts.length,
          itemBuilder: (context, index) {
            final product = hotProducts[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProductCardItem(
                height: 200,
                width: width,
                isHotProduct: true,
                product: product,
                onTap: () async {
                  await showAddToCartBottomSheet(
                    context,
                    product: product,
                    onAddToCart: (value) {
                      context.read<CartBloc>().add(
                            CartEvent.addedProduct(
                              product: product,
                              quantity: value,
                            ),
                          );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
