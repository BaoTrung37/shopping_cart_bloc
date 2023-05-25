import 'package:shoppingcart/models/product.dart';

class HomeRepository {
  Future<List<Product>> getHotProducts() async {
    return [
      Product(
        id: '1',
        title: 'Product 1',
        price: 1000000,
        imageUrl: 'assets/images/product_0.jpg',
      ),
      Product(
        id: '2',
        title: 'Product 2',
        price: 2000000,
        imageUrl: 'assets/images/product_1.jpg',
      ),
      Product(
        id: '3',
        title: 'Product 3',
        price: 3000000,
        imageUrl: 'assets/images/product_2.jpg',
      ),
      Product(
        id: '6',
        title: 'Product 6',
        price: 6000000,
        imageUrl: 'assets/images/product_5.jpg',
      ),
      Product(
        id: '8',
        title: 'Product 8',
        price: 1002000,
        imageUrl: 'assets/images/product_7.jpg',
      ),
      Product(
        id: '9',
        title: 'Product 9',
        price: 2004000,
        imageUrl: 'assets/images/product_8.jpg',
      ),
      Product(
        id: '12',
        title: 'Product 12',
        price: 4000000,
        imageUrl: 'assets/images/product_3.jpg',
      ),
      Product(
        id: '13',
        title: 'Product 13',
        price: 5000000,
        imageUrl: 'assets/images/product_4.jpg',
      ),
      Product(
        id: '14',
        title: 'Product 14',
        price: 9000000,
        imageUrl: 'assets/images/product_5.jpg',
      ),
      Product(
        id: '18',
        title: 'Product 18',
        price: 6600000,
        imageUrl: 'assets/images/product_9.jpg',
      ),
    ];
  }

  Future<List<Product>> getAllProducts() async {
    return [
      Product(
        id: '1',
        title: 'Product 1',
        price: 1000000,
        imageUrl: 'assets/images/product_0.jpg',
      ),
      Product(
        id: '2',
        title: 'Product 2',
        price: 2000000,
        imageUrl: 'assets/images/product_1.jpg',
      ),
      Product(
        id: '3',
        title: 'Product 3',
        price: 3000000,
        imageUrl: 'assets/images/product_2.jpg',
      ),
      Product(
        id: '4',
        title: 'Product 4',
        price: 4000000,
        imageUrl: 'assets/images/product_3.jpg',
      ),
      Product(
        id: '5',
        title: 'Product 5',
        price: 5000000,
        imageUrl: 'assets/images/product_4.jpg',
      ),
      Product(
        id: '6',
        title: 'Product 6',
        price: 6000000,
        imageUrl: 'assets/images/product_5.jpg',
      ),
      Product(
        id: '7',
        title: 'Product 7',
        price: 7000000,
        imageUrl: 'assets/images/product_6.jpg',
      ),
      Product(
        id: '8',
        title: 'Product 8',
        price: 1002000,
        imageUrl: 'assets/images/product_7.jpg',
      ),
      Product(
        id: '9',
        title: 'Product 9',
        price: 2004000,
        imageUrl: 'assets/images/product_8.jpg',
      ),
      Product(
        id: '10',
        title: 'Product 10',
        price: 7004000,
        imageUrl: 'assets/images/product_1.jpg',
      ),
      Product(
        id: '11',
        title: 'Product 11',
        price: 1002000,
        imageUrl: 'assets/images/product_2.jpg',
      ),
      Product(
        id: '12',
        title: 'Product 12',
        price: 4000000,
        imageUrl: 'assets/images/product_3.jpg',
      ),
      Product(
        id: '13',
        title: 'Product 13',
        price: 5000000,
        imageUrl: 'assets/images/product_4.jpg',
      ),
      Product(
        id: '14',
        title: 'Product 14',
        price: 9000000,
        imageUrl: 'assets/images/product_5.jpg',
      ),
      Product(
        id: '15',
        title: 'Product 15',
        price: 2040000,
        imageUrl: 'assets/images/product_6.jpg',
      ),
      Product(
        id: '16',
        title: 'Product 16',
        price: 5200000,
        imageUrl: 'assets/images/product_7.jpg',
      ),
      Product(
        id: '17',
        title: 'Product 17',
        price: 8000000,
        imageUrl: 'assets/images/product_8.jpg',
      ),
      Product(
        id: '18',
        title: 'Product 18',
        price: 6600000,
        imageUrl: 'assets/images/product_9.jpg',
      ),
    ];
  }
}
