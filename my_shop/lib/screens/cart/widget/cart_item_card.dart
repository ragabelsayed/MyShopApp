import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/models/cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.carts,
  }) : super(key: key);

  final Cart carts;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90,
          child: AspectRatio(
            aspectRatio: 0.99,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Palette.kSecondaryColor.withOpacity(0.2),
                // color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(carts.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              carts.product.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: '\$${carts.product.price}',
                style: TextStyle(color: Palette.kPrimaryColor),
                children: [
                  TextSpan(
                    text: '   x${carts.numOfItems}',
                    style: TextStyle(color: Palette.kTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
