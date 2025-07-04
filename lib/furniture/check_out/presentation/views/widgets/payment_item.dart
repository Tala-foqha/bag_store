// furniture/check_out/presentation/views/widgets/payment_item.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Order Summary :',
        style: AppStyles.Bold13,
        )
      ],
    );
  }
}