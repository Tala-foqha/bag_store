// furniture/on_bording/presentation]/views/widgets/page_view_item.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key, required this.images, required this.title, required this.subtitle,
     required this.buttuntext, this.currentPage=0, required this.onPressed,
  });
  final String images,title,subtitle,buttuntext;
  //final PageController _pageController;
   final int currentPage;
   final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 3,),
        Align(
          alignment: Alignment.topCenter,
        child: SizedBox(
          height: 620,
          child: Image.asset(images))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(top: 8,right: 16,left: 16),
            height:265,
            //width: double.infinity,
            decoration: BoxDecoration(
              
              
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDontsIndicator(
                  currentPage: currentPage,
                ),
                    
                SizedBox(height: 16,),
              
                Text(title,
                textAlign: TextAlign.center,
                style: AppStyles.meduim30.copyWith(
                  
                  color: Color(0xff070A03)
                ),),
                SizedBox(height: 3,),
                Text(subtitle,
                textAlign: TextAlign.center,
                style: AppStyles.Light14.copyWith(
                  color: Color(0xff7B7B7B)
                ),),
                SizedBox(height: 24,),
                CustomButton(text: buttuntext, onPressed: onPressed),
               // SizedBox(height: 21,)
              ],
            ),
            
          ),
        )
    
      ],
    );
  }
}

