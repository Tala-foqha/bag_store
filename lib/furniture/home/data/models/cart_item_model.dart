// furniture/home/data/models/cart_item_model.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';

class CartItemModel {
 final String  name,descriptin,brand,code;
 final num price;
 final String imageUrl;
 final List<String>size;

  CartItemModel({
    required this.name,
    required this.code,
   required this.descriptin, 
   required this.brand, 
   
    required this.price,
     required this.imageUrl,
      required this.size});

      factory CartItemModel.fromEntity(CartItemEntity cartItem){
        return CartItemModel(
          code: cartItem.productsEntity.code,
          name: cartItem.productsEntity.bagName,
         descriptin: cartItem.productsEntity.description,
          brand: cartItem.productsEntity.brandName, 
          price: cartItem.productsEntity.price,
           imageUrl: cartItem.productsEntity.imageUrl, 
           size: cartItem.productsEntity.size);
      }
      
   toJson(){
    return {
    'name':name,
    'brand':brand,
   ' descriptin':descriptin,
    'price':price,
    'size':size,
    'code':code,
 
  'imageUrl':imageUrl



   };}


}