// furniture/check_out/presentation/views/widgets/check_out_steps_page_view.dart

import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/address_input_section.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/payment_section.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/shipping_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckOutStepsPageView extends StatelessWidget {
  const CheckOutStepsPageView({
    super.key,
    required this.pageController, required this.formKey, required this.valueListenable,
  });

  final PageController pageController;
  final ValueListenable<AutovalidateMode> valueListenable;
  final GlobalKey<FormState>formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: PageView.builder(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        itemCount: getPages().length,
      itemBuilder: (context,index){
        
       return getPages()[index] ;
      }),
    );
  }
  List<Widget>getPages(){
    return [
ShippingSection(),
AddressInputSection(formKey: formKey,
valueListenable: valueListenable,
),
PaymentSection()
    ];
  }
}
