import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './widget/body.dart';
import '/models/cart.dart';
import '/providers/cart_data.dart';
import 'widget/check_out_card.dart';

class CartScreen extends ConsumerWidget {
  static const routName = '/cart';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    List<Cart> carts = watch(cartProvider);
    return Scaffold(
      appBar: _buildAppBar(
        context: context,
        numOfItems: carts.isNotEmpty ? carts.length : 0,
      ),
      body: Body(carts: carts),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar _buildAppBar({
    required int numOfItems,
    required BuildContext context,
  }) {
    print('hi 1');
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '$numOfItems items',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
