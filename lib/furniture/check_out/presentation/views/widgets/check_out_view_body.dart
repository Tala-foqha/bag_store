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
pageController.addListener(
  (){
    setState(() {
     currentPageIndex=pageController.page!.toInt(); 
    });

  }
);
  }
  @override
  void dispose() {
  pageController.dispose();
    super.dispose();
  }
  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:8 ,),
      CheckOutTextWidget(),
      SizedBox(height: 8,),
    CheckoutSteps(
      pageController: pageController,
      currentIndex: currentPageIndex,
      onStepTapped: (index) {
    setState(() {
      currentPageIndex = index; // غيّر الخطوة
    });
    pageController.jumpToPage(index); // أو animateToPage(index)
  },
    ),
    Expanded(
      child: CheckOutStepsPageView(pageController: pageController)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomButton(
          text: getNextButtonText(currentPageIndex),
           onPressed: (){
          pageController.animateToPage(currentPageIndex+1,duration: Duration(milliseconds: 300),
           curve: Curves.easeIn);
        }),
      ),
      SizedBox(height: 32,)
      ],
    );
  }
  
  getNextButtonText(int currentPageIndex) {
    switch(currentPageIndex){
      case 0:
      return 'Next';
       case 1:
      return 'Next';
       case 2:
      return 'Pay with Paypal';
       default:
       return 'Next';

    }
  }
}
