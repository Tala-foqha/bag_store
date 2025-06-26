// furniture/home/presentation/viewss/widgets/home_view_body.dart
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeViewHeader(),
          SizedBox(height: 16,),
          Row(
            children: [
              Expanded(
                child: CustomTextField(hintText: 'Search',
                prefixIcon: SvgPicture.asset('assets/images/search.svg',
                fit: BoxFit.scaleDown,
                ),
                
                
                ),
              ),
              SizedBox(width: 16,),
              Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
           border: Border.all(
            color: Color(0xffEDEDED)
           ),
            borderRadius: BorderRadius.circular(16),
            color:Color(0xff6C8947)
          ),
          child: SvgPicture.asset('assets/images/filter 01.svg',fit: BoxFit.scaleDown,
          height: 20,
          width: 20,
          ),
        )

            ],
          )

      
        ],
      ),
    );
  }
}
