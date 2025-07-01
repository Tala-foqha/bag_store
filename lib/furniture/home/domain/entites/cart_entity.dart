// furniture/home/domain/entites/cart_entity.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';

class CartEntity {
final   List<CartItemEntity>cartItems;

  CartEntity({required this.cartItems});

  addCartItemEntity(CartItemEntity cartItemEntity){
    cartItems.add(cartItemEntity);

  }
}