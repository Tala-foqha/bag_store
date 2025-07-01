// furniture/home/presentation/viewss/cart_view_widgets/incrase_abd_deacrese_widgets.dart

import 'package:flutter/material.dart';

class IncreaseAndDeacreasWidgets extends StatelessWidget {
  const IncreaseAndDeacreasWidgets({
    super.key, required this.colorBackGround, required this.icon, required this.iconColor, this.color,
  });
final Color colorBackGround;
final IconData icon;
final Color iconColor;
 final Color ?color;
  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: colorBackGround,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:color??Colors.transparent
        )
      ),
      child: Center(child: Icon(icon
      ,color: iconColor,
      size: 20,
      )),
    );
  }
}
