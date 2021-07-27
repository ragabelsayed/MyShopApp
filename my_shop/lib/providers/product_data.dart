import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '/models/product.dart';

Uri url = Uri.parse(uri);
const uri = 'https://myshop-a1117-default-rtdb.firebaseio.com/products.json';

final productProvider = ChangeNotifierProvider<ProductDataNotifier>((ref) {
  return ProductDataNotifier();
});

class ProductDataNotifier extends ChangeNotifier {
  List<Product> _items = [];
  List<Product> get items => [..._items];

  Future<void> fetchAndSetData() async {
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Product> _loadedProducts = [];
      extractedData.forEach(
        (prodId, prodData) {
          _loadedProducts.add(
            Product.fromJson(
              prodId: prodId,
              data: prodData,
            ),
          );
        },
      );

      _items = _loadedProducts;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}

// class ProductData {
//   List<Product> _items = [];
//   List<Product> get items => [..._items];

// static final proData = FutureProvider<List<Product>>((ref) async {
//   final response = await http.get(url);
//   final extractedData = json.decode(response.body) as Map<String, dynamic>;
//   final List<Product> _loadedProducts = [];
//   extractedData.forEach(
//     (prodId, prodData) {
//       _loadedProducts.add(
//         Product.fromJson(
//           prodId: prodId,
//           data: prodData,
//         ),
//       );
//     },
//   );
//   return _loadedProducts;

// });
// }
