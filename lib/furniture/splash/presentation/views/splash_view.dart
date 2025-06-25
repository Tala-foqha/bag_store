// furniture/splash/presentation/views/splash_view.dart
import 'package:bag_store_ecommerec/furniture/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeNme='splash-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}