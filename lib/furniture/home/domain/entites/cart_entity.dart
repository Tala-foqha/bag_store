// furniture/home/domain/entites/cart_entity.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/products_entity.dart';

class CartEntity {
final   List<CartItemEntity>cartItems;

  CartEntity({required this.cartItems});

  addCartItemEntity(CartItemEntity cartItemEntity){
    cartItems.add(cartItemEntity);


  }
  removeCartItem(CartItemEntity cartItem){
    cartItems.remove(cartItem);
  }
  
  double calculateTotalPrice(){
    double totalPrice=0;
    for(var cartItem in cartItems){
      totalPrice+=cartItem.calculateTotalPrice();

    }
    return totalPrice;
  }
    isExist(ProductsEntity product){
      bool isExist=false;
      for(var cartItem in cartItems){
        if(cartItem.productsEntity==product){
          return true;
        }
      }
      return false;
    }
  CartItemEntity ?getCartItem(ProductsEntity product)  {//اكيد موجودة نون نلبل
    for(var cartItem in cartItems){
      if(cartItem.productsEntity==product){
        return cartItem;
      }
    }
    return CartItemEntity(productsEntity: product,count: 1);

  }

  }
