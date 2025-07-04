// furniture/check_out/presentation/views/widgets/payment_section.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/order_summry_widget.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24,),
        
       OrderSummryWidget(),
       PaymentItem(title: '', child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Delivery Address',
              style: AppStyles.Bold13.copyWith(
                color: Color(0xff000000)
              ),
              ),
              Spacer(),
              SvgPicture.asset('assets/images/edit.svg'),

            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              SvgPicture.asset('assets/images/location.svg'),
              SizedBox(width: 4,),
              Text('123 Nile Street, City',
              style:AppStyles.Regular13.copyWith(
                fontSize: 16,
                color: Color(0xff4E5556)
              ) ,)
            ],
          )
        ],
       ))

]);
  }}
