// furniture/home/presentation/viewss/widgets/home_view_header.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello, Alexa 👋🏻',style: AppStyles.Light14.copyWith(
          color: Color(0xff070A03)
        ),),
      
    
    SizedBox(height: 2,),
    Row(
      children: [
    
        Text('Let’s find some bag for you',
        style: AppStyles.meduim20,
        ),
       Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
           border: Border.all(
            color: Color(0xffEDEDED)
           ),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white
          ),
          child: SvgPicture.asset('assets/images/notification.svg',fit: BoxFit.scaleDown,),
        )
      ],
    ),
            
      ]);
  }
}