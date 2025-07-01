// furniture/home/presentation/viewss/cart_view_widgets/cart_item_list_view.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_item_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key, required this.cartItems});
final List<CartItemEntity>cartItems;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount:cartItems.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CartIteem(cartItemEntity: cartItems[index],),
          
        );
      
    
    });
  }
}