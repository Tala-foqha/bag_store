// furniture/home/presentation/viewss/widgets/home_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_header.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          HomeViewSearch(),
          SizedBox(height: 16,),
          Row(children: [
            Text('All Brands',
            style: AppStyles.meduim20.copyWith(
              color: Color(0xff070A03),
              fontSize: 18
            ),
            ),
            Spacer(),
            Text('See All',
            style: AppStyles.Light14.copyWith(
              color: Color(0xff6C8947)
            ),
            )
          ],)


      
        ],
      ),
    );
  }
}
