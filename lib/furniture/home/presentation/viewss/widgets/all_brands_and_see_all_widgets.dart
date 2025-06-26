// furniture/home/presentation/viewss/widgets/all_brands_and_see_all_widgets.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/widgets.dart';

class AllBrandsAndSeeAllWidgets extends StatelessWidget {
  const AllBrandsAndSeeAllWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
    ],);
  }
}
