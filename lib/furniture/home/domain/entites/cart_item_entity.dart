// furniture/home/domain/entites/cart_item_entity.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';

class CartItemEntity {
 final ProductsEntity productsEntity; 
 int count; //لانه متغير

  CartItemEntity({required this.productsEntity,this.count=0});

  num calculateTotalPrice() {
  //final price = double.tryParse(productsEntity.price) ?? 0.0;
  return productsEntity.price * count;
}

  increaseCount(){
    count++;
  }
  deacreseCount(){
    count--;
  }
}
