// core/widgets/custom_text_field.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.suffixIcon, required this.hintText, this.controller,  this.obscureText=false, this.validator, this.prefixIcon, this.color, this.colortext, this.onSaved});
 final Widget? suffixIcon;
 final Widget? prefixIcon;
 final String hintText;
 final void Function(String?)? onSaved;
 final TextEditingController? controller;
 final Color? color;
 final Color?colortext;
 final bool obscureText;
 final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      obscureText:obscureText ,
      controller:controller ,
      validator: validator,
      decoration: InputDecoration(
        fillColor: color??Colors.white,
        filled: true,
        suffixIcon:suffixIcon ,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle:AppStyles.Light16.copyWith(
          color:colortext?? Color(0xffDFDFDF)
        ) ,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder()

        
      ),

      
    );
  }
}
OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      width:1 ,
       color: Color(0xFFE6E9E9)
    )
  );
}