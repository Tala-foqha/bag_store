// furniture/home/presentation/viewss/widgets/popular_and_see_all_widget.dart

import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PopularAndSeeAllWidgets extends StatelessWidget {
  const PopularAndSeeAllWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children:
        [
          Text(
            'Popular Products',style:AppStyles.meduim18.copyWith(
              color: Color(0xff070A03)
            )
          ),
          Spacer(),
          Text('See All',
          style: AppStyles.Light14.copyWith(
            color: AppColors.primaryColor
          ),
          )
        ]
      ),
    );
  }
}
