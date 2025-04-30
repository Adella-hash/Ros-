import 'package:silver_stone_list/models/cart_item_model.dart';

class OrderModel {
  final String orderId;
  final String userId;
  final List<CartItemModel> items;
  final double total;
  final DateTime date;

  OrderModel({
    required this.orderId,
    required this.userId,
    required this.items,
    required this.total,
    required this.date,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        orderId: json['orderId'],
        userId: json['userId'],
        total: json['total'].toDouble(),
        date: DateTime.parse(json['date']),
        items: (json['items'] as List)
            .map((item) => CartItemModel.fromJson(item))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'orderId': orderId,
        'userId': userId,
        'items': items.map((e) => e.toJson()).toList(),
        'total': total,
        'date': date.toIso8601String(),
      };
}
