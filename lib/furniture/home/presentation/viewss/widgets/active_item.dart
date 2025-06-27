// furniture/home/presentation/viewss/widgets/active_item.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ✅ الخط الأخضر بالأعلى
        Container(
          height: 2,
          width: 60,
          margin: EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            color: Color(0xff6C8947), // اللون الأخضر المستخدم
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        SvgPicture.asset(
          image,
          height: 24,
          width: 24,
          color: Color(0xff6C8947), // نفس اللون
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: AppStyles.Light14.copyWith(
            color: Color(0xff6C8947),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
