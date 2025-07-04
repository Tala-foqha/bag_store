// furniture/check_out/data/model/order_product_model.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';

class OrderProductModel {
  final String name;
  final String code;
  final String imageUrl;
  final num price;
  final int quantity;

  OrderProductModel({
  required this.name, 
  required this.code,
  required this.imageUrl,
  required this.price, 
  required this.quantity});

  factory OrderProductModel.fromEntity(CartItemEntity cartItem){
    return OrderProductModel(
      name: cartItem.productsEntity.bagName,
     code: cartItem.productsEntity.code, 
     imageUrl: cartItem.productsEntity.imageUrl,
      price: cartItem.productsEntity.price, 
      quantity: cartItem.count);

      
  }
}