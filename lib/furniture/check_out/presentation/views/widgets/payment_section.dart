// furniture/check_out/presentation/views/widgets/payment_section.dart
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/dliver_address_widget.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/order_summry_widget.dart';
import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24,),
        
       OrderSummryWidget(),
       DliverAddressWidget()

]);
  }}
