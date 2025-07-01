// furniture/home/presentation/viewss/main_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/home_view_nav_bar.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
static const routeName='Main-view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
   int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeViewNavBar(
          onItemTapped: (index) {
           

            setState(() {
               currentViewIndex = index;
            });
          },
      ),
      body:SafeArea(child: IndexedStack(
        index: currentViewIndex,

        children: [
          HomeView(),
          SizedBox(),
          SizedBox(),
          CartView(),
        ],
      )) ,
    );
  }
}