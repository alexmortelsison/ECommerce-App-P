import 'package:ecommerce_practice/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.shopping_bag,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 100,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Alex Shop',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Home of Premium Quality Products',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 10),
          MyButton(
            child: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => Navigator.pushNamed(context, 'home_page'),
          )
        ],
      ),
    );
  }
}
