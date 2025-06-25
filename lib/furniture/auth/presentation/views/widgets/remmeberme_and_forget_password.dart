// furniture/auth/presentation/views/widgets/remmeberme_and_forget_password.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/cheacked_box.dart';
import 'package:flutter/material.dart';

class RemmebermeAndForgetpassword extends StatefulWidget {
  const RemmebermeAndForgetpassword({
    super.key,
  });

  @override
  State<RemmebermeAndForgetpassword> createState() => _RemmebermeAndForgetpasswordState();
}

class _RemmebermeAndForgetpasswordState extends State<RemmebermeAndForgetpassword> {
  bool isRmmemberMe=false;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       CheckedBox(
        
        isChecked: isRmmemberMe, inChecked: (bool value) {
          isRmmemberMe=value;
          setState(() {
            
          });
          },
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

