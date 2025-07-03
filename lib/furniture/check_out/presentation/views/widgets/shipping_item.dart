// furniture/check_out/presentation/views/widgets/shipping_item.dart

import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
     required this.title, 
     required this.price,
      required this.subTitle,
       required this.isSelected, this.onTap, 
  });
  final String title;
  final String price;
  final String subTitle;
  final bool isSelected;
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.only(
          top: 16,left:13,
          right: 28,
          bottom: 16
          ),
        // width: 343,
        // height: 81,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          
         
          shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(4),
             side: BorderSide(
              color:isSelected?AppColors.primaryColor :Colors.transparent
             )
          ),
          color: Color(0x33D9D9D9)
        ),
      
         child:    IntrinsicHeight(
           child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              isSelected?    ActiveShippingItemDot():InActiveShippingItemDot(),
                  SizedBox(width: 10,),
               
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                      style: AppStyles.semiBold.copyWith(
                        color: Color(0xff000000)
                      ),),
                       SizedBox(height: 4,),
              Text(subTitle,
              style:AppStyles.Regular13.copyWith(
                color: Color(0xff7B7B7B)))
                    ],
                  ),
                  Spacer(),
                  Center(
                    child: Text('${price}\$',
                    style: AppStyles.Regular13.copyWith(
                      color: AppColors.primaryColor
                    ),),
                  )
                ],
              ),
         ),
           
          
      ),
    );
  }
}

class InActiveShippingItemDot extends StatelessWidget {
  const InActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xff949D9E)
        )
      ),
      
    );
  }
}


class ActiveShippingItemDot extends StatelessWidget {
  const ActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 18,
      width: 18,
      decoration: ShapeDecoration(
        color: AppColors.primaryColor,
        shape: OvalBorder(
          side: BorderSide(
            
            width: 4,color: Colors.white
          )
        ),
        
        
      ),
      
    );
  }
}