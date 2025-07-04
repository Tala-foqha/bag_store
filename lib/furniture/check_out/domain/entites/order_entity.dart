// furniture/check_out/domain/entites/order_entity.dart
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/shipping_address_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_entity.dart';

class OrderEntity {
final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity? shippingAddressEntity=ShippingAddressEntity();


  OrderEntity(this.cartEntity,

  {
    this.payWithCash,}
   );
}