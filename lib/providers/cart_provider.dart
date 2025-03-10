import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:logger/logger.dart";
import "package:theharvesthub/models/cart_model.dart";
import "package:theharvesthub/models/product_model.dart";

class CartProvider extends ChangeNotifier {
  int _quantity = 1;
  int get quantity => _quantity;
  final List<CartModel> _cartitems = [];
  List<CartModel> get cartitems => _cartitems;

  void increaseQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity != 1) {
      _quantity--;
      notifyListeners();
    }
  }

  void addToCart(ProductModel model) {
    if (_cartitems.any((element) => element.model.id == model.id)) {
      _cartitems.removeWhere((element) => element.model.id == model.id);
      Logger().e(_cartitems.length);
      notifyListeners();
    } else {
      _cartitems.add(CartModel(model: model, quantity: _quantity));
      Logger().f(_cartitems.length);
      notifyListeners();
    }
  }
}
