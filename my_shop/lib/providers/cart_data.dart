import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/models/cart.dart';

final cartProvider =
    StateNotifierProvider<CartNotifier, List<Cart>>((ref) => CartNotifier());

class CartNotifier extends StateNotifier<List<Cart>> {
  CartNotifier([List<Cart>? initialCarts]) : super(initialCarts ?? []);

  void addCart(Cart cart) {
    if (state.contains(cart)) {
    } else {
      state.add(cart);
    }
  }

  void removeCart(Cart target) {
    // state.removeWhere((e) => e.id == target.cartId);
    state = state.where((cart) => cart.id != target.id).toList();
  }

  double getTotal() {
    var total = 0.0;
    state.forEach((cart) {
      total = total + (cart.numOfItems * cart.product.price);
    });
    return total;
  }

  void increment({required Cart cart}) {
    if (state.contains(cart)) {
      state.firstWhere((e) => e.id == cart.id).numOfItems++;
    } else {
      state.add(cart);
      state.firstWhere((e) => e.id == cart.id).numOfItems++;
    }
  }

  void decrement({required Cart cart}) {
    state.firstWhere((e) => e.id == cart.id).numOfItems--;
  }
}
