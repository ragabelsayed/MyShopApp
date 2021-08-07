import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './widget/body.dart';
import '/models/cart.dart';
import '/providers/cart_data.dart';
import '/providers/product_data.dart';

class CartScreen extends ConsumerWidget {
  static const routName = '/cart';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    List<Cart> carts = watch(cartProvider);
    if (watch(cartProvider).isNotEmpty) {
      watch(cartProvider).clear();
    }
    watch(cartProvider).addAll([
      Cart(product: watch(productProvider).items[0], numOfItems: 2),
      Cart(product: watch(productProvider).items[1], numOfItems: 1),
      Cart(product: watch(productProvider).items[3], numOfItems: 1),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Your Cart',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              carts.isEmpty ? '0 items' : '${carts.length} items',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
