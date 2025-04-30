class CartItemModel {
  final String productId;
  final int quantity;

  CartItemModel({
    required this.productId,
    required this.quantity,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        productId: json['productId'],
        quantity: json['quantity'],
      );

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'quantity': quantity,
      };
}
