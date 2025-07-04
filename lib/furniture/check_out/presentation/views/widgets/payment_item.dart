// furniture/check_out/presentation/views/widgets/payment_item.dart
import 'package:bag_store_ecommerec/core/utils/app_decoration.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.title, required this.child});
final String title;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${title}',
        style: AppStyles.Bold13,
        ),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
          decoration: AppDecoration.greyBoxDecoration,
          child:child ,
        )
      ],
    );
  }
}