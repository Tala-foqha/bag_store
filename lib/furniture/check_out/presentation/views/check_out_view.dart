// furniture/check_out/presentation/views/check_out_view.dart
import 'package:bag_store_ecommerec/core/repo/orders_repo/order_repo.dart';
import 'package:bag_store_ecommerec/core/services/get_it_services.dart';
import 'package:bag_store_ecommerec/core/widgets/add_order_cubit_bloc_builder.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/manager/orders/orders_cubit.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_view_body.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key, required this.cartEntity});
  static const routeName = 'Check-out';
  final CartEntity cartEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersCubit(getIt.get<OrderRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Provider.value(
            value: OrderEntity(
              cartEntity,
              uId: FirebaseAuth.instance.currentUser!.uid,
            ),
            child: AddOrderCubitBlocBuilder(child: CheckOutViewBody()),
          ),
        ),
      ),
    );
  }
}
