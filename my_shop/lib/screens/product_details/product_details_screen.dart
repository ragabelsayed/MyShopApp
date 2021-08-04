import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_shop/models/product.dart';
import 'widget/body.dart';
import 'widget/custom_app_bar..dart';

class ProductDetailScreen extends StatelessWidget {
  static const routName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    final _product = args.product;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.grey.shade200,
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        // backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppBar(rating: _product.rating),
        body: Body(),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
