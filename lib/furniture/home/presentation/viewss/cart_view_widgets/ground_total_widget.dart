// furniture/home/presentation/viewss/cart_view_widgets/ground_total_widget.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class GroundTotalWidget extends StatelessWidget {
  const GroundTotalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
              Text('Grand Total',
              style: AppStyles.meduim18.copyWith(
    color: Color(0xff070A03)
              ),
              ),
              Spacer(),
              Text('\$4120.00',
               style: AppStyles.meduim18.copyWith(
    color:Color(0xff070A03)
              ),)
            ],);
  }
}
