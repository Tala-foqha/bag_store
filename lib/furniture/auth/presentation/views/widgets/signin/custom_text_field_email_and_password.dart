// furniture/auth/presentation/views/widgets/signin/custom_text_field_email_and_password.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextfieldEmailAndPassword extends StatelessWidget {
  const CustomTextfieldEmailAndPassword({
    super.key, required this.formKey, required this.emailController, required this.passwordController, required this.autovalidateMode,
  });
  final GlobalKey<FormState>formKey;
  
    final TextEditingController emailController;
        final TextEditingController passwordController;
       final AutovalidateMode autovalidateMode;



  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey ,
      autovalidateMode: autovalidateMode,
      child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        
         
         Text('Email Address',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
         SizedBox(height: 4,),
         CustomTextField(
          controller: emailController,
          hintText: 'Enter Email Address',
          validator: (value){ if (value == null || value.isEmpty) {
                return 'Please enter your email';}
                return null;
                },
                
         ),
         SizedBox(height: 16,),
          
         Text('Password',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
          SizedBox(height: 4,),
           PasswordField(text: 'Enter Your Password',
           passwordController: passwordController,
           validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
           )
      
           
      
       ],
      ),
    );
  }
}

