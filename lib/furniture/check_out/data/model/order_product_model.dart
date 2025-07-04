// furniture/check_out/data/model/order_product_model.dart
class OrderProductModel {
  final String name;
  final String code;
  final String imageUrl;
  final String price;
  final int quantity;

  OrderProductModel({
  required this.name, 
  required this.code,
  required this.imageUrl,
  required this.price, 
  required this.quantity});
}