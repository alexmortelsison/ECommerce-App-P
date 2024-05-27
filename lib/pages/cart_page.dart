import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                final item = cart[index];
                return const ListTile();
              },
            ),
          ],
        ),
      ),
    );
  }
}
