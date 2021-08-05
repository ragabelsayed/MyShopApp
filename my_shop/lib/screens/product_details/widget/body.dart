import 'package:flutter/material.dart';
import '/models/product.dart';
import 'product_preview.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: ProductPreview(productImages: product.images),
        ),
      ],
    );
  }
}
