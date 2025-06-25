// main.dart
import 'package:bag_store_ecommerec/core/helper_function/on_generate_route.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signin_view.dart';
import 'package:bag_store_ecommerec/furniture/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BagStore());
}
class BagStore extends StatelessWidget {
  const BagStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeNme,
    );
  }
}