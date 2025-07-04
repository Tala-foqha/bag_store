// furniture/check_out/presentation/views/widgets/check_out_steps.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/widgets/step_item.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CheckoutSteps extends StatelessWidget {
  final int currentIndex;
  final void Function(int index)? onStepTapped;

  const CheckoutSteps({
    super.key,
    required this.currentIndex,
    this.onStepTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StepItem(
            isActive: currentIndex >= 0,
            iconPath: 'assets/images/package box 06.svg',
            onTap: () =>onStepTapped,
            text: 'Shipping',
          ),
          SizedBox(width: 8),
          Expanded(
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 6.0,
              dashColor: currentIndex >= 1
                  ? AppColors.primaryColor
                  : Color(0xffDFDFDF),
            ),
          ),
          SizedBox(width: 8),
          StepItem(
            isActive: currentIndex >= 1,
            iconPath: 'assets/images/location 01.svg',
            onTap: () => onStepTapped,
            text: 'Address',
          ),
          SizedBox(width: 8),
          Expanded(
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 2.0,
              dashLength: 6.0,
              dashColor: currentIndex == 2
                  ? AppColors.primaryColor
                  : Color(0xffDFDFDF),
            ),
          ),
          SizedBox(width: 8),
          StepItem(
            isActive: currentIndex == 2,
            iconPath: 'assets/images/card.svg',
            onTap: () => onStepTapped,
            text: 'Review',
          ),
        ],
      ),
    );
  }
}
