// furniture/auth/presentation/views/widgets/signin/signin_view_body.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/core/widgets/custom_button.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/custom_text_field_email_and_password.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/donot_have_account_widget.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/or_login_widget.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/remmeberme_and_forget_password.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/signin_with_email_or_apple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewBody extends StatefulWidget {

  const SigninViewBody({super.key, required this.state});
    final SigninState state;

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}




class _SigninViewBodyState extends State<SigninViewBody> {
final GlobalKey<FormState>formKey=GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  

    final TextEditingController emailController=TextEditingController();
     final TextEditingController passwordController=TextEditingController();
  
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
           CustomTextfieldEmailAndPassword(formKey: formKey,
            emailController: emailController,
             passwordController: passwordController, 
             autovalidateMode: autovalidateMode,),
           SizedBox(height: 12,),
           RemmebermeAndForgetpassword(),
           SizedBox(height: 24,),
           CustomButton(text: 'Login', onPressed: (){
            if
            (formKey.currentState!.validate()){
              formKey.currentState!.save();
              final email=emailController.text;
              final password=passwordController.text;
              if(email.isEmpty||password.isEmpty){
print('email osr password is null');
return;
              }
              context.read<SigninCubit>().signinUser(email, password);
            }
           },
           backgroundColor:widget.state is SigninSuccess?Color(0xff6C8947): Color(0xffEDEDED),
           color:widget.state is SigninSuccess?Colors.white: Color(0xffA1A1A1),
           ),
           Expanded(child: SizedBox()),
           DonotHaveAccoutWidget(),
           
         
        
            
        
        
          ],
        ),
      ),
        ])
    );
  }
}
