// furniture/home/presentation/viewss/profile_view_widgets/nav_bar_profile_view.dart

import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class NavBarProfileView extends StatelessWidget {
  const NavBarProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Profile',
          style: AppStyles.meduim24.copyWith(
            color: Colors.white
          ),
          ),
          SizedBox(height: 16,),
          Row(
             children: [
              Image.asset('assets/images/Frame 1000003440.png',height: 60,width: 60,),
            SizedBox(width: 12,),
              Column(
    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alexa Wilson',style: AppStyles.meduim16.copyWith(
                    color: Colors.white
                  ),),
                  Text('alexa.wilson@example.com',
                  style: AppStyles.Light14.copyWith(
                    color: Colors.white
                  ),),
    
                  
                ],
              ),
             Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white
                  )
                ),
                child: SvgPicture.asset('assets/images/edit.svg',fit: BoxFit.scaleDown,
                color: Colors.white,
                ),
              )
    
             ],)
        ],
      ),
    );
  }
}