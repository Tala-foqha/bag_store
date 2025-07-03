// furniture/check_out/presentation/views/widgets/active_step_item.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(16),
              
            ),child: SvgPicture.asset('assets/images/package box 06.svg',
            color: Colors.white,
            fit: BoxFit.scaleDown,),
          ),
        
        ],
      ),
    );
  }
}