// furniture/check_out/domain/entites/order_entity.dart
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/shipping_address_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';

class OrderEntity {
 final List<CartItemEntity>cartItem;
 final bool payWithCash;
 final ShippingAddressEntity shippingAddressEntity;


  OrderEntity({required this.payWithCash,
   required this.cartItem,
   required this.shippingAddressEntity
   });
}