// furniture/home/presentation/viewss/widgets/bag_with_deatails_item.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class bagWithDetailsItem extends StatelessWidget {
  const bagWithDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 420,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffF7F7F7),
        boxShadow:[
            BoxShadow(
               color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: Offset(0, 2),
            )
        ]
      ),
      child: Column(
       children: [ Padding(
         padding: const EdgeInsets.symmetric(horizontal: 33),
         child: Center(
           child: Image.asset('assets/images/chanel bag.png',
            fit: BoxFit.scaleDown,
             width: 166,
             height: 185,
            ),
         ),
       ),
        SizedBox(height: 33,),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
           
            decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
               bottomRight: Radius.circular(16)
               )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chanel',
                style: AppStyles.Light14.copyWith(
                  fontSize: 12,
                  color: Color(0xff7B7B7B)
                ),),
              SizedBox(height: 4,),
              Text('Mini Flap Bag with Top Handle...',
              style: AppStyles.meduim20.copyWith(
                color: Color(0xff070A03)
              ),
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Text('\$2500.00',
                  style: AppStyles.meduim16.copyWith(
                    color: Color(0xff070A03)
                  ),
                  ),
                  SizedBox(width: 8,),
                  Text('\$2800.00',style: AppStyles.Light16.copyWith(
                    color: Color(0xffA1A1A1),
                    decoration:TextDecoration.lineThrough,
                    decorationColor: Color(0xffA1A1A1)
                  ),)
                ],
              ),
              SizedBox(height: 16,),
              Container(
                height: 48,
                width: 238,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xff6C8947)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Buy Now',
                      style: AppStyles.Light16.copyWith(
                        color: Color(0xffFFFFFF)
                      ),),
                      Spacer(),
                      Center(child: SvgPicture.asset('assets/images/arrows.svg'))
                    ],
                  ),
                ),
              )
              ],
            ),
            
            
            
          ),
        )
       ]
      ),
            
    );
  }
}
