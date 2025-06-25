// furniture/on_bording/presentation]/views/widgets/dotsin_decator.dart

import 'package:flutter/material.dart';

class DotsinDicator extends StatelessWidget {
  const DotsinDicator({
    super.key, this.isActive=false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 2,
        width:isActive?20: 4,
        decoration: BoxDecoration(
          color:isActive? Color(0xff6C8947):Color(0xffEDEDED),
         //color: Colors.red,
          borderRadius: BorderRadius.circular(2),
      
        ),
      );
  }
}