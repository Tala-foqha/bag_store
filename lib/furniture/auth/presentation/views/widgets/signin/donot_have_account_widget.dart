// furniture/auth/presentation/views/widgets/signin/donot_have_account_widget.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';

class DonotHaveAccoutWidget extends StatelessWidget {
  const DonotHaveAccoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Text('Don’t have an account? ',style: AppStyles.Light14.copyWith(
         color: Color(0xff070A03)
       ),),
       GestureDetector(
         onTap: () {
           
         },
         child: GestureDetector(
          onTap: () {
            
            Navigator.pushReplacementNamed(context, SignupView.routeName);
          },
           child: Text('Register Now',style: AppStyles.Light14.copyWith(
             color: Color(0xff6C8947)
           ),),
         ),
       )
     ],
    );
  }
}
