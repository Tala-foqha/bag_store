// furniture/auth/presentation/views/widgets/signup/password_field.dart

import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
     this.passwordController, required this.text, this.validator, this.confirmpasswordController, 
  });

  final TextEditingController? passwordController;
  
  final TextEditingController? confirmpasswordController;

  final String text;
final String? Function(String?)? validator;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  
  bool obscureText=true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      validator:widget. validator,
      obscureText: obscureText,
     controller: widget.passwordController,
     hintText: widget.text,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText=!obscureText;
          setState(() {
            
          });
        },
        child:obscureText?SvgPicture.asset('assets/images/remove_eye.svg',
        fit: BoxFit.scaleDown,
        ): SvgPicture.asset('assets/images/Eye.svg',
        fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
