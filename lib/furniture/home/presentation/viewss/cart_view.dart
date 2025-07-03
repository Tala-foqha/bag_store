// furniture/home/presentation/viewss/cart_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/cart_item/cart_item_cubit.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view_widgets/cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => CartItemCubit(),
          child: CartViewBody(),
      
    
    );
  }
}
