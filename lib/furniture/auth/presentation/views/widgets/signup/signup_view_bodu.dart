// furniture/auth/presentation/views/widgets/signup/signup_view_bodu.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/custom_text_field_email_and_password.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/already_have_account.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/signup_form.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/splash_images.png',
            width: 77.51,
            height: 32,),
            SizedBox(height: 24,),
            Text('Register your account',style: AppStyles.meduim24.copyWith(
              color: Color(0xff070A03)
            )
            ,),
            SizedBox(height: 8,),
            Text('Enter your information below',
            style: AppStyles.Light14.copyWith(
              color: Color(0xffA1A1A1)
            ),),
           
           SizedBox(height: 24,),
           SignupFoem(),
           SizedBox(height: 12,),
          
           SizedBox(height: 24,),
           CustomButton(text: 'Register', onPressed: (){
           },
           backgroundColor: Color(0xff6C8947),
           color: Color(0xffFFFFFF),
           ),
           Expanded(child: SizedBox()),
           AlreadyHaveAccount()
         
           
         
        
            
        
        
          ],
        ),
      ),
        ])
    );
  }
}
