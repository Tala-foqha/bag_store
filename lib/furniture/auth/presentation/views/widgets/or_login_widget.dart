// furniture/auth/presentation/views/widgets/or_login_widget.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OrLoginWidget extends StatelessWidget {
  const OrLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Expanded(
         child: Divider(
           thickness: 1.5,
           color: Color(0xffEDEDED),
         ),
       ),
      SizedBox(width: 8,),
       Text('Or Login With',
       style: AppStyles.Light14.copyWith(
         color: Color(0xff070A03)
       ),),
      SizedBox(width: 8,),
       Expanded(
         child: Divider(
           thickness: 1.5,
           color: Color(0xffEDEDED),
         ),
       ),
    
     ],
    );
  }
}
