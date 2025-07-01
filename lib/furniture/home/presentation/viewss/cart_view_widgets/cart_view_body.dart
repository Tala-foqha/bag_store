// furniture/home/presentation/viewss/cart_view_widgets/cart_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/my_cart_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(height: 8,),
        MyCartNavBar()
      ],
    ) ;
  }
}
