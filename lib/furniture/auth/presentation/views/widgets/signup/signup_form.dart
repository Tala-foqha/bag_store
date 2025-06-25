// furniture/auth/presentation/views/widgets/signup/signup_form.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupFoem extends StatelessWidget {
  const SignupFoem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      
      Text('Name',
       style:AppStyles.Light14.copyWith(
         color: Color(0xffA1A1A1)
       ) ,),
       SizedBox(height: 4,),
       CustomTextField(
        hintText: 'Enter Your Name',
       ),
       SizedBox(height: 16,),
        
       
       Text('Email Address',
       style:AppStyles.Light14.copyWith(
         color: Color(0xffA1A1A1)
       ) ,),
       SizedBox(height: 4,),
       CustomTextField(
        hintText: 'Enter Email Address',
       ),
       SizedBox(height: 16,),

        Text('Mobile Number',
       style:AppStyles.Light14.copyWith(
         color: Color(0xffA1A1A1)
       ) ,),
       SizedBox(height: 4,),
       CustomTextField(
        hintText: 'Enter Your Mobile Number',
       ),
       SizedBox(height: 16,),
       

        
       Text('Password',
       style:AppStyles.Light14.copyWith(
         color: Color(0xffA1A1A1)
       ) ,),
        SizedBox(height: 4,),
         CustomTextField(
          hintText: 'Enter Password',
           suffixIcon: SvgPicture.asset('assets/images/Eye.svg',
           fit: BoxFit.scaleDown,
           ),
         ),
         SizedBox(height: 16,),
          Text('Re-Enter Password',
       style:AppStyles.Light14.copyWith(
         color: Color(0xffA1A1A1)
       ) ,),
        SizedBox(height: 4,),
         CustomTextField(
          hintText: 'Confirm Password',
           suffixIcon: SvgPicture.asset('assets/images/Eye.svg',
           fit: BoxFit.scaleDown,
           ),
         ),


         
    
     ],
    );
  }
}

