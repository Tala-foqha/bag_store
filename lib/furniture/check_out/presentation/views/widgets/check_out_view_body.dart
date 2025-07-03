// furniture/check_out/presentation/views/widgets/check_out_view_body.dart
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_steps.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_steps_page_view.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_text_widget.dart';
import 'package:flutter/material.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
 late PageController pageController;
  @override
  void initState(){
super.initState();
pageController=PageController();
  }
  @override
  void dispose() {
  pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:8 ,),
      CheckOutTextWidget(),
      SizedBox(height: 8,),
    CheckoutSteps(),
    Expanded(
      child: CheckOutStepsPageView(pageController: pageController)),
      CustomButton(text: 'Next', onPressed: (){}),
      SizedBox(height: 32,)
      ],
    );
  }
}
