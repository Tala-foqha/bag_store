// furniture/auth/presentation/views/widgets/signin/custom_text_field_email_and_password.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextfieldEmailAndPassword extends StatelessWidget {
  const CustomTextfieldEmailAndPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      
       
       Text('Email Address',
       style:AppStyles.Light14.copyWith(
         color: Color(0xffA1A1A1)
       ) ,),
       SizedBox(height: 4,),
       CustomTextField(
        hintText: 'Enter Email Address',
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

         
    
     ],
    );
  }
}

