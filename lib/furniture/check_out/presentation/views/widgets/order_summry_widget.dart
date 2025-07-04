// furniture/check_out/presentation/views/widgets/order_summry_widget.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'Order Summary:',
      child: Column(
        children: [
          Row(
     children: [
       Text(
         'Subtotal:',
         style: AppStyles.Regular13.copyWith(color: Color(0xff4E5556)),
       ),
       Spacer(),
       Text(
         '150\$',
         style: AppStyles.semiBold16.copyWith(color: Color(0xff0C0D0D)),
       ),
     ],
          ),
          SizedBox(height: 8),
          Row(
     children: [
       Text(
         'Delivery',
         style: AppStyles.Regular13.copyWith(color: Color(0xff4E5556)),
       ),
       Spacer(),
       Text(
         '30\$',
         style: AppStyles.semiBold16.copyWith(color: Color(0xff0C0D0D)),
       ),
     ],
          ),
          SizedBox(height: 8),
    
          // ✅ هذا هو السطر اللي لازم يكون فيه Divider بشكل صحيح
          Padding(
     padding: const EdgeInsets.symmetric(horizontal: 24),
     child: Divider(
       height: 16,
       thickness: .5,
       color: Color(0xFFCACECE),
     ),
          ),
    
          SizedBox(height: 8),
          Row(
     children: [
       Text(
         'Total:',
         style: AppStyles.semiBold16.copyWith(color: Colors.black),
       ),
       Spacer(),
       Text(
         '180\$',
         style: AppStyles.semiBold16.copyWith(color: Colors.black),
       ),
     ],
          ),
        ],
      ),
    );
  }
}