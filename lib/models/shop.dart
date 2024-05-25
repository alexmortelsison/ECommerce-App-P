import 'package:ecommerce_practice/models/product.dart';

class Shop {
  final List<Product> _shop = [
    Product(
      name: 'Product 1',
      price: 99.99,
      description: 'Description',
      imagePath: 'images/1.png',
    ),
    Product(
      name: 'Product 2',
      price: 99.99,
      description: 'Description',
      imagePath: 'images/2.png',
    ),
    Product(
      name: 'Product 3',
      price: 99.99,
      description: 'Description',
      imagePath: 'images/3.png',
    ),
    Product(
      name: 'Product 4',
      price: 99.99,
      description: 'Description',
      imagePath: 'images/4.png',
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    cart.add(item);
  }

  void removeFromCart(Product item) {
    cart.remove(item);
  }
}
