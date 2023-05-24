import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/product_0.jpg',
                  height: height * 0.7,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 10,
                    child: SvgPicture.asset(
                      'assets/icons/fire.svg',
                      height: 18,
                      width: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product #16',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '160,000 đ',
                      style: TextStyle(
                        color: Colors.amber[700],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    // TODO: Implement add to cart
                  },
                  icon: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Colors.amber[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
