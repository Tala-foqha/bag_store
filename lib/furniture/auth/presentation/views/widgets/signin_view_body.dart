// furniture/auth/presentation/views/widgets/signin_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/custom_text_field_email_and_password.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/or_login_widget.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/remmeberme_and_forget_password.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin_with_email_or_apple.dart';
import 'package:flutter/material.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/splash_images.png',
          width: 77.51,
          height: 32,),
          SizedBox(height: 24,),
          Text('Let’s get you Login!',style: AppStyles.meduim24.copyWith(
            color: Color(0xff070A03)
          )
          ,),
          SizedBox(height: 8,),
          Text('Enter your information below',
          style: AppStyles.Light14.copyWith(
            color: Color(0xffA1A1A1)
          ),),
          SizedBox(height: 24,),
         SiginWithGoogleOrApple(),
         SizedBox(height: 24,),
         OrLoginWidget(),
         SizedBox(height: 24,),
         CustomTextfieldEmailAndPassword(),
         SizedBox(height: 12,),
         RemmebermeAndForgetpassword(),
         SizedBox(height: 24,),
         CustomButton(text: 'Login', onPressed: (){},
         backgroundColor: Color(0xffEDEDED),
         color: Color(0xffA1A1A1),
         ),
         Spacer(),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account? ',style: AppStyles.Light14.copyWith(
              color: Color(0xff070A03)
            ),),
            Text('Register Now',style: AppStyles.Light14.copyWith(
              color: Color(0xff6C8947)
            ),)
          ],
         )
       

          

      
        ],
      ),
    );
  }
}
