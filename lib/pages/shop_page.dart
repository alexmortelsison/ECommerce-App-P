import 'package:ecommerce_practice/components/my_drawer.dart';
import 'package:ecommerce_practice/components/my_product_tile.dart';
import 'package:ecommerce_practice/models/product.dart';
import 'package:ecommerce_practice/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
        title: Text(
          'Shop Page',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: 550,
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            Product product = products[index];
            return MyProductTile(
              product: product,
            );
          },
        ),
      ),
    );
  }
}
