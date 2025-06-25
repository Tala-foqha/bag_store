// furniture/auth/presentation/views/widgets/signup/signup_form.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupForm extends StatelessWidget {

final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
    final TextEditingController confirmpasswordController;
  final TextEditingController phoneController;
  final AutovalidateMode autovalidateMode;

  const SignupForm({
    super.key,
    required this.autovalidateMode, required this.formKey, required this.nameController, required this.emailController, required this.passwordController, required this.phoneController, required this.confirmpasswordController
  });
  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        
        Text('Name',
        
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
         SizedBox(height: 4,),
         CustomTextField(
          validator:(value){
            if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
          }
           ,
          controller:nameController ,
          hintText: 'Enter Your Name',
         ),
         SizedBox(height: 16,),
          
         
         Text('Email Address',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
         SizedBox(height: 4,),
         CustomTextField(
          validator: (value){ if (value == null || value.isEmpty) {
                return 'Please enter your email';}
                return null;
                },
                
          controller: emailController,
          hintText: 'Enter Email Address',
         ),
         SizedBox(height: 16,),
      
          Text('Mobile Number',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
         SizedBox(height: 4,),
         CustomTextField(
          validator:  (value){ if (value == null || value.isEmpty) {
                return 'Please enter your phoneNumber';}
                return null;
                },
          controller: phoneController,
          hintText: 'Enter Your Mobile Number',
         ),
         SizedBox(height: 16,),
         
      
          
         Text('Password',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
          SizedBox(height: 4,),
           PasswordField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            
            passwordController: passwordController,
           
           text: 'Enter your password',),
           SizedBox(height: 16,),
            Text('Re-Enter Password',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
          SizedBox(height: 4,),
     PasswordField( 
      text: 'Confirm Your Password',
    
      
     validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your confirm password';
              }
              if (value !=passwordController.text
                  ) {
                return 'Password does not match';
              }
              return null;
            },
            confirmpasswordController:confirmpasswordController ,

           ),
      
      
           
      
       ],
      ),
    );
  }
}

