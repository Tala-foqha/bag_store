// furniture/check_out/presentation/views/widgets/shipping_section.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/shipping_item.dart';
import 'package:flutter/material.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
         SizedBox(height: 24,),
        ShippingItem()
      ]
    );
  }
}
