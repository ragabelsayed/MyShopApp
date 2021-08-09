import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/models/cart.dart';
import '/providers/cart_data.dart';
import 'cart_item_card.dart';

class Body extends StatelessWidget {
  final List<Cart> carts;

  const Body({Key? key, required this.carts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return carts.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: carts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                key: ValueKey(carts[index].id),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  context.read(cartProvider.notifier).removeCart(
                        carts[index],
                      );
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
        : Center(child: Text('Cart is empty 🥺'));
  }
}
