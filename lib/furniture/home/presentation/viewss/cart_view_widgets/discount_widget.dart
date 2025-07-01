// furniture/home/presentation/viewss/cart_view_widgets/discount_widget.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
          Text('Discount',
          style: AppStyles.Light16.copyWith(
            color: Color(0xff070A03)
          ),
          ),
          Spacer(),
          Text('\$80.00',
           style: AppStyles.Light16.copyWith(
            color: Color(0xff22C55E)
          ),)
        ],);
  }
}
