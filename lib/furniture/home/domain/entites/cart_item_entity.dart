// furniture/home/domain/entites/cart_item_entity.dart
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';

class CartItemEntity {
 final ProductsEntity productsEntity; 
 int count; //لانه متغير

  CartItemEntity({required this.productsEntity,this.count=0});

  double get itemTotal {
    final price = double.tryParse(productsEntity.price) ?? 0.0;
    return price * count;
  }

  // ✅ ميثود لحساب total لكل العناصر في السلة
  static double calculateTotalForAll(List<CartItemEntity> items) {
    return items.fold(0.0, (total, item) => total + item.itemTotal);
  }

  increaseCount(){
    count++;
  }
  deacreseCount(){
    count--;
  }
}
