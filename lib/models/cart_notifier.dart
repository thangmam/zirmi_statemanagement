import 'package:flutter/material.dart';

//singleton
class CartNotifier extends ChangeNotifier {
  static final CartNotifier _instance = CartNotifier._internal();

  factory CartNotifier() {
    return _instance;
  }

  CartNotifier._internal();

  // pub/sub -> publisher/emitter   -> subscriber

  // static CartNotifier getInstance() {
  //   _instance ??= CartNotifier();
  //   return _instance!;
  // }

  int _cartItemCount = 0;

  int getCartItemCount() => _cartItemCount;

  void addItemToCart() {
    _cartItemCount = _cartItemCount + 1;
    notifyListeners();
  }
}
