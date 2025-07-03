// furniture/check_out/widgets/check_out_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckOutViewBody extends StatelessWidget {
  const CheckOutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:8 ,),
      Stack(
      alignment: Alignment.center,
     
      children: [
        
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 26),
            child: SvgPicture.asset('assets/images/arrows_1.svg'),
          ),
        ),
       Text('Shipping',
       style: AppStyles.meduim18.copyWith(
        color: Color(0xff070A03)
       ),
       ) 
      ],
    )
      ],
    );
  }
}