// furniture/home/presentation/viewss/cart_view_widgets/cart_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_item.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_item_list_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/my_cart_nav_bar.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/incrase_abd_deacrese_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          SizedBox(height: 8,),
          MyCartNavBar(),
          SizedBox(height: 16,),
          CartItemListView()
        ],
      ),
    ) ;
  }
}
