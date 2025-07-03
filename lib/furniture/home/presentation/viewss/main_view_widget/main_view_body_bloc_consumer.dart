// furniture/home/presentation/viewss/main_view_widget/main_view_body_bloc_consumer.dart
import 'package:bag_store_ecommerec/core/helper_function/build_error_bar.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/main_view_widget/main_view_body.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/cart/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({super.key, required this.currentViewIndex});

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
      if(state is CartAdded){
        buildErrorBar(context: context, message: 'the product added');
      }
      },
      builder: (context, state) {
        return MainViewBody(currentViewIndex: currentViewIndex);
      },
    );
  }
}
