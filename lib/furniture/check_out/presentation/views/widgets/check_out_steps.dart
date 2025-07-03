// furniture/check_out/presentation/views/widgets/check_out_steps.dart
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/active_step_item.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/in_active_step_item.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/active_item.dart';
import 'package:dotted_line/dotted_line.dart';

import 'package:flutter/material.dart';
class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        ActiveStepItem(),
        SizedBox(width: 8),
        Expanded(
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 2.0,
            dashLength: 6.0,
            
            
            dashColor: Color(0xffDFDFDF),
          ),
        ),
        SizedBox(width: 8),
        InActiveStepItem(),
       SizedBox(width: 8),
        Expanded(
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 2.0,
            dashLength: 6.0,
           dashColor: Color(0xffDFDFDF),
          ),
        ),
        SizedBox(width: 8),
        InActiveStepItem(),
      ],
    );
  }
}