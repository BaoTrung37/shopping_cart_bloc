import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/utils/extensions/number_format_extension.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    Key? key,
    required this.height,
    required this.width,
    required this.product,
    required this.onTap,
    this.isHotProduct = false,
  }) : super(key: key);

  final double height;
  final double width;
  final Product product;
  final VoidCallback onTap;
  final bool isHotProduct;
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
                  product.imageUrl,
                  height: height * 0.7,
                  width: width,
                  fit: BoxFit.cover,
                ),
                if (isHotProduct)
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
                    Text(
                      product.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product.price.toCurrencyString(),
                      style: TextStyle(
                        color: Colors.amber[700],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: onTap,
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
