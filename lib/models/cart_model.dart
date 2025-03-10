import 'package:theharvesthub/models/product_model.dart';

class CartModel {
  final ProductModel model;
  final int quantity;

  CartModel({
    required this.model,
    required this.quantity,
  });
}
