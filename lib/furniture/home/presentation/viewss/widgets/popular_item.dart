// furniture/home/presentation/viewss/widgets/popular_item.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        width: 343,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
           boxShadow: [
                BoxShadow(
      color: Colors.black.withOpacity(0.08),
      blurRadius: 64,
      offset: Offset(0, 32),
      spreadRadius: -12,
                )
              ],
        ),
        child: Row(
          children: [
           Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffF7F7F7),
      
            ),
            child: Image.asset('assets/images/bags.png'),
      
           ) ,
           SizedBox(width: 12,),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Louis Vuitton',
              style: AppStyles.Light14.copyWith(
                fontSize: 12,
                color: Color(0xff7B7B7B)
              ),
              ),
              SizedBox(height:2 ,),
              Text('Néonoé BB',
              style: AppStyles.meduim16.copyWith(
                color: Color(0xff070A03),
                fontSize: 14
              ),
              ),
              SizedBox(height: 2,),
              Row(
                children: [
                  Text('\$1890.00',
                  style:AppStyles.meduim16.copyWith(
                    fontSize: 14,
                    color: Color(0xff070A03)
                  ) ,
                  ),
                  SizedBox(width: 4,),
                  Text('\$1900.00',
                  style: AppStyles.Light14.copyWith(
                      color: Color(0xffA1A1A1),
            decoration:TextDecoration.lineThrough,
            decorationColor: Color(0xffA1A1A1)
          ),)
                  
                ],
              )
            ],
           )
          ],
        ),
      ),
    );
  }
}

