import 'package:ecommerce_practice/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(height: 10),
                MyListTile(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  onTap: () => Navigator.pushNamed(context, '/shop_page'),
                ),
                MyListTile(
                  icon: Icons.shopping_cart_outlined,
                  text: 'Cart',
                  onTap: () => Navigator.pushNamed(context, '/cart_page'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: MyListTile(
                icon: Icons.logout,
                text: 'Log Out',
                onTap: () => Navigator.pushNamed(context, '/intro_page'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
