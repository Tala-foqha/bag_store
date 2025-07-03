// furniture/check_out/presentation/views/widgets/in_active_step_item.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});

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
              color: Color(0xffF7F7F7),
              borderRadius: BorderRadius.circular(16),
              
            ),child: SvgPicture.asset('assets/images/package box 06.svg',
            color: Colors.black,
            fit: BoxFit.scaleDown,),
          ),
        SizedBox(
          width: 30,
          child: DottedLine(
            dashLength: 1.0,
            dashColor: AppColors.primaryColor
          ),
        ),

        ],
      ),
    );
  }
}