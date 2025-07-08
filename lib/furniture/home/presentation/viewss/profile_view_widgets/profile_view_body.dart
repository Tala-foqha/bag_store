// furniture/home/presentation/viewss/profile_view_widgets/profile_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/profile_view_widgets/list_item_profile.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/profile_view_widgets/nav_bar_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NavBarProfileView(),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(child: SvgPicture.asset('assets/images/Vector 175.svg'),
           text: 'My Orders',
            image: 'assets/images/notepad.svg',),
        ),
        SizedBox(height: 16,),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(child: 
           SvgPicture.asset('assets/images/Vector 175.svg'),
         
           text: 'My Cards',
            image: 'assets/images/card.svg',),
        ),
        SizedBox(height: 16,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(child: SvgPicture.asset('assets/images/Vector 175.svg'),
           text: 'My Addresses',
            image: 'assets/images/location.svg',),

        ),

        SizedBox(height: 16,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(child: SvgPicture.asset('assets/images/Vector 175.svg'),
           text: 'Dark Mode',
            image: 'assets/images/eye scanner.svg',),
            
            
        ),

        SizedBox(height: 16,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(child: SvgPicture.asset('assets/images/Vector 175.svg'),
           text: 'Privacy Policy',
            image: 'assets/images/shield-check.svg',),  
        ),

         SizedBox(height: 16,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(child: SvgPicture.asset('assets/images/Vector 175.svg'),
           text: 'Terms & Conditions',
            image: 'assets/images/notes.svg',),
        ),
        
         SizedBox(height: 16,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListItemProfile(
            colorText: Color(0xffEF4444),
           text: 'Logout',
           color: Color(0xffFEF2F2),
            image: 'assets/images/logout 01.svg',),
        ),
      ],
    );
  }
}