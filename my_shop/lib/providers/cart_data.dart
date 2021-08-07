import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/models/cart.dart';

final cartProvider =
    StateNotifierProvider<CartNotifier, List<Cart>>((ref) => CartNotifier());

class CartNotifier extends StateNotifier<List<Cart>> {
  CartNotifier() : super([]);

  void addCart(Cart cart) {
    state.add(cart);
  }

  void removeCart(Cart cart) {
    state.add(cart);
  }
}
