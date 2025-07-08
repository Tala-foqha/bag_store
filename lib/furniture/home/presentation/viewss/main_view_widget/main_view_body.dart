// furniture/home/presentation/viewss/main_view_widget/main_view_body.dart

import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/profile_view.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
    
      children: [
        HomeView(),
       SizedBox(),
        SizedBox()
       , CartView(),
       ProfileView()],
    );
  }
}
