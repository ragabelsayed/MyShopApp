import 'package:my_shop/models/product.dart';

class Cart {
  final String id;
  final Product product;
  final int numOfItems;

  Cart({
    required this.id,
    required this.product,
    required this.numOfItems,
  });
}
