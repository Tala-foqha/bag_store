// furniture/check_out/presentation/views/widgets/step_item.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StepItem extends StatelessWidget {
  final bool isActive;
  final String iconPath;
  final VoidCallback? onTap;
  final String text;

  const StepItem({
    super.key,
    required this.isActive,
    required this.iconPath,
    this.onTap, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: isActive ? AppColors.primaryColor : const Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(16),
            ),
            child: SvgPicture.asset(
              iconPath,
              color: isActive ? Colors.white : Colors.black,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        SizedBox(height: 8,),
        Text(text,style: AppStyles.Light14.copyWith(
         color:  Colors.black
        ),)
      ],
    );
  }
}
