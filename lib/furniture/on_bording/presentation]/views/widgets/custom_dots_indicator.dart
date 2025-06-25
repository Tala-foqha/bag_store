// furniture/on_bording/presentation]/views/widgets/custom_dots_indicator.dart
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/widgets/dotsin_decator.dart';
import 'package:flutter/material.dart';

class CustomDontsIndicator extends StatelessWidget {
  const CustomDontsIndicator({
    super.key, required this.currentPage,
  });
final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index){
      return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: DotsinDicator(
          isActive: index==currentPage,
        ),
      );
      
    
        
      }));
  }
}
