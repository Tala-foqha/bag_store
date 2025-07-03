// furniture/home/domain/repos/cart_item_repo.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';

abstract class CartItemRepo {
  Future<void>addToCart(CartItemEntity cartItemEntity);
  Future<void>updateItemCart(CartItemEntity cartItem);
}