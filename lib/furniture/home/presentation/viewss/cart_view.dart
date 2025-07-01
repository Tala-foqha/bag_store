// furniture/home/presentation/viewss/cart_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(child: CartViewBody()) ,
    );
  }
}