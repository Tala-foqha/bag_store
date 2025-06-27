// furniture/home/presentation/viewss/home_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName='Home-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Container(
          decoration:   BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,              // من الأعلى أبيض
          Color(0xffF7F7F7),         // إلى الأسفل رمادي فاتح جداً
        ],
      ),),
          child: HomeViewBody(),
        ),
      ) ,
      
    );
  }
}