// furniture/home/presentation/viewss/widgets/home_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/all_brands_and_see_all_widgets.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/brand_tem.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_header.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_search.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeViewHeader(),
          SizedBox(height: 16,),
          HomeViewSearch(),
          SizedBox(height: 16,),
          AllBrandsAndSeeAllWidgets(),
          SizedBox(height: 16,),
          BrandItem(),


      
        ],
      ),
    );
  }
}
