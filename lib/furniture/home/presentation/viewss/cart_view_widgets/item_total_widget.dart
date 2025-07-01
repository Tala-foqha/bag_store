// furniture/home/presentation/viewss/cart_view_widgets/item_total_widget.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemTotalWidget extends StatelessWidget {
  const ItemTotalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('Item Total',
      style: AppStyles.Light16.copyWith(
        color: Color(0xff070A03)
      ),
      ),
      Spacer(),
      Text('\$4200.00',
       style: AppStyles.Light16.copyWith(
        color: Color(0xff070A03)
      ),)
    ],);
  }
}
