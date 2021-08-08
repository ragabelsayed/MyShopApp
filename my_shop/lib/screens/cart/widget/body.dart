import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/models/cart.dart';
import '/providers/cart_data.dart';
import 'cart_item_card.dart';

class Body extends ConsumerWidget {
  // final List<Cart> carts;

  // const Body({Key? key, required this.carts}) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    List<Cart> carts = watch(cartProvider);
    print('hi');

    return carts.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: carts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: UniqueKey(),
                // key: ValueKey(carts[index].product.id),
                // key: Key(carts[index].product.id.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  // cart.removeCart(carts[index]);
                  context.read(cartProvider.notifier).removeCart(
                        carts[index],
                      );
                  // context.read(cartProvider).remove(carts[index]);
                },
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset('assets/icons/Trash.svg'),
                  ),
                ),
                child: CartItemCard(carts: carts[index]),
              ),
            ),
          )
        : Text('Cart is empty 😔');
  }
}
