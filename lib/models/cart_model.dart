import 'package:shamo/models/product_model.dart';

class CartModel {
  int? id;
  ProductModel? product;
  int quantity;

  CartModel({
    this.id,
    this.product,
    this.quantity = 0,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      product: ProductModel.fromJson(json['product']),
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product?.toJson(),
      'quantity': quantity,
    };
  }

  double getTotalPrice() {
    return product!.price! * quantity;
  }
}
