// furniture/home/presentation/viewss/widgets/in_active_item.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.image, required this.name
  });
   final String image;
   final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // يوسّط كل شي عموديًا
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10,),
        SvgPicture.asset(image),
        SizedBox(height: 2,),
        Text(name,
        style: AppStyles.Light14.copyWith(
          color: Color(0xffA1A1A1),
          fontSize: 12
        ),
        )
      ],
    );
  }
}