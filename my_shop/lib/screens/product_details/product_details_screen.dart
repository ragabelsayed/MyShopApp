import 'package:flutter/material.dart';
import 'package:my_shop/models/product.dart';
import 'widget/body.dart';
import 'widget/custom_app_bar..dart';

class ProductDetailScreen extends StatelessWidget {
  static const routName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9).withOpacity(0.95),
      appBar: CustomAppBar(rating: args.product.rating),
      body: Body(
        product: args.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
