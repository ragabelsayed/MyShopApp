import 'package:flutter/material.dart';
import '/models/product.dart';
import 'product_description.dart';
import 'product_preview.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductPreview(productImages: product.images),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(product: product),
        ),
      ],
    );
  }
}
