import 'package:my_shop/models/product.dart';

class Cart {
  final String id = DateTime.now().toString();
  final Product product;
  int numOfItems;

  Cart({
    required this.product,
    this.numOfItems = 1,
  });
}
