// furniture/check_out/presentation/views/widgets/check_out_view_body.dart
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/active_step_item.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_text_widget.dart';
import 'package:flutter/material.dart';

class CheckOutViewBody extends StatelessWidget {
  const CheckOutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:8 ,),
      CheckOutTextWidget(),
      SizedBox(height: 8,),
      ActiveStepItem()
      ],
    );
  }
}
