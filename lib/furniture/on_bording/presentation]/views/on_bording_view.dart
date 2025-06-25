// furniture/on_bording/presentation]/views/on_bording_view.dart
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/widgets/on_bording_view_body.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});
static const routeName='on-bording';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body:SafeArea(child: OnBordingViewBody()) ,
    );
  }
}