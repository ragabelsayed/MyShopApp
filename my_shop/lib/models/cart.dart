import 'package:my_shop/models/product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({
    required this.product,
    required this.numOfItems,
  });
}
