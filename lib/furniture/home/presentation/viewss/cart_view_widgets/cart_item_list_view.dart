// furniture/home/presentation/viewss/cart_view_widgets/cart_item_list_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CartIteem(),
          S
        );
    
    });
  }
}