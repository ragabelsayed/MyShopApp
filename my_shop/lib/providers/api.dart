import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_shop/models/product.dart';

const uri = 'https://myshop-a1117-default-rtdb.firebaseio.com/products.json';

class API {
  static Uri url = Uri.parse(uri);
  static Future<void> addData({required Product product}) async {
    try {
      await http.post(
        url,
        body: json.encode(
          {
            'id': product.id,
            'title': product.title,
            'description': product.description,
            'imageUrl': product.images,
            // 'colors': product.colors,
            'price': product.price,
            'rating': product.rating,
            'isFavourite': product.isFavourite,
            'isPopular': product.isPopular
          },
        ),
      );
    } catch (error) {
      throw error;
    }
  }

  static Future<void> fetchAndSetData() async {
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
      demoProducts = _loadedProducts;
    } catch (error) {
      throw error;
    }
  }
}
