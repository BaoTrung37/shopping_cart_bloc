// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingcart/ui/widgets/product_card_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var shoppingCartButton = IconButton(
      onPressed: () {
        // TODO: Implement go to cart
      },
      icon: const Stack(
        children: [
          Icon(Icons.shopping_cart_outlined),
          Positioned(
            bottom: 0,
            left: 0,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.redAccent,
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
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

    var hotProductListView = SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ProductCardItem(
                height: 200,
                width: 150,
              ),
            );
          },
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        actions: [
          shoppingCartButton,
        ],
      ),
      body: CustomScrollView(
        slivers: [
          hotProductTitle,
          hotProductListView,
          allProductTitle,
          SliverGrid.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ProductCardItem(
                height: 200,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
