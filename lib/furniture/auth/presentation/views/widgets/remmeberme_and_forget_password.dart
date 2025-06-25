// furniture/auth/presentation/views/widgets/remmeberme_and_forget_password.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RemmebermeAndForgetpassword extends StatelessWidget {
  const RemmebermeAndForgetpassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Container(
         height: 16,
         width: 16,
         decoration: BoxDecoration(
           border: Border.all(
             color: Color(0xffDFDFDF),
           )
         ),
       ),
       SizedBox(width: 4,),
       Text('Remember Me',style: AppStyles.Light16.copyWith(
         color: Color(0xff070A03)
       ),),
       Spacer(),
       Text('Forgot Password?',style: AppStyles.Light14.copyWith(
         color: Color(0xff6C8947)
       ),)
     ],
    );
  }
}

