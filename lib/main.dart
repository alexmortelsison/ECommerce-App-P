import 'package:ecommerce_practice/models/shop.dart';
import 'package:ecommerce_practice/pages/cart_page.dart';
import 'package:ecommerce_practice/pages/shop_page.dart';
import 'package:ecommerce_practice/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
