// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:shoppingcart/models/product.dart';

class CartProduct {
  final String id;
  final Product product;
  final int quantity;
  CartProduct({
    required this.id,
    required this.product,
    required this.quantity,
  });
}
