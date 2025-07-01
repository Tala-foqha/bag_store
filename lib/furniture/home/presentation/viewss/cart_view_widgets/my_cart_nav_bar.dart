// furniture/home/presentation/viewss/cart_view_widgets/my_cart_nav_bar.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCartNavBar extends StatelessWidget {
  const MyCartNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
     
      children: [
        
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 26),
            child: SvgPicture.asset('assets/images/arrows_1.svg'),
          ),
        ),
       Text('My Cart',
       style: AppStyles.meduim18.copyWith(
        color: Color(0xff070A03)
       ),
       ) 
      ],
    );
  }
}