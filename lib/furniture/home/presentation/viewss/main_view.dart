// furniture/home/presentation/viewss/main_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/home_view_nav_bar.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/main_view_widget/main_view_body.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/main_view_widget/main_view_body_bloc_consumer.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/cart/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'Main-view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: HomeViewNavBar(
          onItemTapped: (index) {
            setState(() {
              currentViewIndex = index;
            });
          },
        ),
        body: SafeArea(
          child: MainViewBodyBlocConsumer(currentViewIndex: currentViewIndex),
        ),
      ),
    );
  }
}
