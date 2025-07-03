// furniture/home/presentation/viewss/home_view _widgets/popular_item.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/cart/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key, required this.productsEntity,
  });
  final ProductsEntity productsEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
        

          
          Expanded(
            child: Container(
              // height: 84, 
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
             // width: 343,
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
  padding: EdgeInsets.all(8), // أخف من 10، عشان تقللي الفراغات
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Color(0xffF7F7F7),
  ),
  child: Image.network(
    productsEntity.imageUrl,
    fit: BoxFit.contain, // أو scaleDown حسب اللي بظبط أكتر
  ),
  ),

                 SizedBox(width: 12,),
Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      productsEntity.brandName,
      style: AppStyles.Light14.copyWith(
        fontSize: 12,
        height: 1.1, // 👈 مش ضروري 1.0 دايمًا، 1.1 أخف
        color: const Color(0xff7B7B7B),
      ),
    ),
    const SizedBox(height: 2),
    Text(
      productsEntity.bagName,
      maxLines: 1, // 👈 يمنع التمدد الزايد
      overflow: TextOverflow.ellipsis, // 👈 مهم عشان ما يكسّر النص
      style: AppStyles.meduim16.copyWith(
        fontSize: 14,
        height: 1.1, // 👈 يقلل المسافة بين الأسطر
        color: const Color(0xff070A03),
      ),
    ),
    const SizedBox(height: 2),
    Row(
      children: [
        Text(
          '\$${productsEntity.price}',
          style: AppStyles.meduim16.copyWith(
            fontSize: 14,
            height: 1.1, // 👈 كمان هون
            color: const Color(0xff070A03),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '\$1900.00',
          style: AppStyles.Light14.copyWith(
            fontSize: 12,
            height: 1.1,
            color: const Color(0xffA1A1A1),
            decoration: TextDecoration.lineThrough,
            decorationColor: const Color(0xffA1A1A1),
          ),
        ),
      ],
    ),
  ],
),]
              )
              


            ),
          ),
           SizedBox(width: 8,),
                 GestureDetector(
                  onTap: (){
                    context.read<CartCubit>().addProduct(productsEntity);
                  },
                   child: Container(
                               width: 48,
                               height: 84,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(12),
                                 color: Color(0xff6C8947)
                               ),
                               child: SvgPicture.asset('assets/images/shopping bag.svg',
                               fit: BoxFit.scaleDown,
                               ),
                               ),
                 )
        ],
      ),
    );
  }
}

