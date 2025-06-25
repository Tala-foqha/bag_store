// furniture/auth/presentation/views/widgets/signup/signup_form.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupForm extends StatelessWidget {

final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final AutovalidateMode autovalidateMode;

  const SignupForm({
    super.key,
    required this.autovalidateMode, required this.formKey, required this.nameController, required this.emailController, required this.passwordController, required this.phoneController
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
          controller: phoneController,
          hintText: 'Enter Your Mobile Number',
         ),
         SizedBox(height: 16,),
         
      
          
         Text('Password',
         style:AppStyles.Light14.copyWith(
           color: Color(0xffA1A1A1)
         ) ,),
          SizedBox(height: 4,),
           CustomTextField(
            controller: passwordController,
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
      ),
    );
  }
}

