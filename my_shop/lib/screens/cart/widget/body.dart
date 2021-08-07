import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_shop/models/cart.dart';
import 'package:my_shop/providers/product_data.dart';

class Body extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    List<Cart> demoCarts = [
      Cart(product: watch(productProvider).items[0], numOfItems: 2),
      Cart(product: watch(productProvider).items[0], numOfItems: 1),
      Cart(product: watch(productProvider).items[0], numOfItems: 1),
    ];
    return Container();
  }
}
