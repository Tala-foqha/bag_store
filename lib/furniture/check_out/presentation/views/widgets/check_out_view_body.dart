// furniture/check_out/presentation/views/widgets/check_out_view_body.dart
import 'package:bag_store_ecommerec/core/helper_function/build_error_bar.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/manager/orders/orders_cubit.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_steps.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_steps_page_view.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/check_out_text_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOutViewBody extends StatefulWidget {
  const CheckOutViewBody({super.key});

  @override
  State<CheckOutViewBody> createState() => _CheckOutViewBodyState();
}

class _CheckOutViewBodyState extends State<CheckOutViewBody> {
 late PageController pageController;
ValueNotifier<AutovalidateMode>valueNotifier=ValueNotifier(AutovalidateMode.disabled);
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
  valueNotifier.dispose();
    super.dispose();
  }
  int currentPageIndex=0;
  final GlobalKey<FormState>formKey=GlobalKey<FormState>();
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
      child: CheckOutStepsPageView(
        pageController: pageController,
      formKey: formKey, valueListenable: valueNotifier,)),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomButton(
          text: getNextButtonText(currentPageIndex),
           onPressed: (){
            if(currentPageIndex==0){
            _handleShippingWidgetValidate(context);}
            else if(currentPageIndex==1){
            _handleAddressSectionValidation();}
            else{
              var orderEntity=context.read<OrderInputEntity>();
             context.read<OrdersCubit>().addOrder(order: orderEntity);
            }
  }),
      ),
      SizedBox(height: 32,)
      ],
    );
  }

  void _handleShippingWidgetValidate(BuildContext context) {
     if(context.read<OrderInputEntity>().payWithCash!=null){
              pageController.animateToPage(currentPageIndex+1,duration: Duration(milliseconds: 300),
               curve: Curves.easeIn);
      }
      else{
        showBar(context, 'please select a payment method');
      }
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
  
  void _handleAddressSectionValidation() {
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
        pageController.animateToPage(currentPageIndex+1,duration: Duration(milliseconds: 300),
               curve: Curves.easeIn);
      }else{
        valueNotifier.value=AutovalidateMode.always;
      }

    }
  }

