// furniture/check_out/presentation/views/widgets/shipping_item.dart

import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,left:13,
        right: 28,
        bottom: 16
        ),
      // width: 343,
      // height: 81,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0x33D9D9D9)
      ),
    
       child:    IntrinsicHeight(
         child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff949D9E)
                    )
                  ),
                ),
                SizedBox(width: 10,),
             
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cash on delivery',
                    style: AppStyles.semiBold.copyWith(
                      color: Color(0xff000000)
                    ),),
                     SizedBox(height: 4,),
            Text('Deliver from the place',
            style:AppStyles.Regular13.copyWith(
              color: Color(0xff7B7B7B)))
                  ],
                ),
                Spacer(),
                Center(
                  child: Text('40\$',
                  style: AppStyles.Regular13.copyWith(
                    color: AppColors.primaryColor
                  ),),
                )
              ],
            ),
       ),
         
        
    );
  }
}