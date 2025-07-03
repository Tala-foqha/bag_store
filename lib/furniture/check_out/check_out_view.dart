// furniture/check_out/check_out_view.dart
import 'package:bag_store_ecommerec/furniture/check_out/widgets/check_out_view_body.dart';
import 'package:flutter/material.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});
static const routeName='Check-out';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CheckOutViewBody(),
    );
  }
}