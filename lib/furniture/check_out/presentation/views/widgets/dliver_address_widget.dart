// furniture/check_out/presentation/views/widgets/dliver_address_widget.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class DliverAddressWidget extends StatelessWidget {
  const DliverAddressWidget({
    super.key, required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PaymentItem(title: '', child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Row(
         children: [
           Text('Delivery Address',
           style: AppStyles.Bold13.copyWith(
             color: Color(0xff000000)
           ),
           ),
           Spacer(),
           GestureDetector(
            onTap:(){
              pageController.animateToPage(pageController.page!.toInt()-1, 
              duration: Duration(milliseconds: 300), 
              curve: Curves.easeIn);
            } ,
            child: SvgPicture.asset('assets/images/edit.svg')),
    
         ],
       ),
       SizedBox(height: 8,),
       Row(
         children: [
           SvgPicture.asset('assets/images/location.svg'),
           SizedBox(width: 4,),
           Text('${context.read<OrderInputEntity>().shippingAddressEntity}',
           style:AppStyles.Regular13.copyWith(
             fontSize: 16,
             color: Color(0xff4E5556)
           ) ,),
         ]
       )
     ],
    ));
  }

  
}
