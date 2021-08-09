import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/models/cart.dart';

final cartProvider =
    StateNotifierProvider<CartNotifier, List<Cart>>((ref) => CartNotifier());

class CartNotifier extends StateNotifier<List<Cart>> {
  CartNotifier([List<Cart>? initialCarts]) : super(initialCarts ?? []);

  void addCart(Cart cart) {
    state.add(cart);
  }

  void removeCart(Cart target) {
    // state.removeWhere((e) => e.id == target.cartId);
    state = state.where((cart) => cart.id != target.id).toList();
  }
}
