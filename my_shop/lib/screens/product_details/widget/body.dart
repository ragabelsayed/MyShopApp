import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/config/size.dart';
import '/models/cart.dart';
import '/providers/cart_data.dart';
import '/widget/default_btn.dart';
import '/models/product.dart';
import 'color_dot.dart';
import 'product_description.dart';
import 'product_preview.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    Cart _cart = Cart(product: product);
    return ListView(
      children: [
        ProductPreview(productImages: product.images),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(product: product),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9).withOpacity(1),
                child: Column(
                  children: [
                    ColorDots(product: product, cart: _cart),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: SizeConfig.getProportionateScreentWidth(40),
                          top: SizeConfig.getProportionateScreentWidth(15),
                        ),
                        child: Consumer(
                          builder: (context, watch, child) => DefaultButton(
                            text: 'Add to cart',
                            onPressed: () {
                              context
                                  .read(cartProvider.notifier)
                                  .addCart(_cart);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
