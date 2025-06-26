// furniture/home/presentation/viewss/widgets/brand_tem.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffF7F7F7)
        ),
        child: SvgPicture.asset('assets/images/chanel.svg',
        fit: BoxFit.scaleDown,
        ),
      ),
      SizedBox(height: 4,),
      Text('Chanel',
      style: AppStyles.Light14.copyWith(
        color: Color(0xff070A03)
      ),
      )
    ],);
  }
}
