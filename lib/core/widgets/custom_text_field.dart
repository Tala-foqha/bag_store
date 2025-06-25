// core/widgets/custom_text_field.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.suffixIcon, required this.hintText, this.controller,  this.obscureText=false});
 final Widget? suffixIcon;
 final String hintText;
 final TextEditingController? controller;
 final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText ,
      controller:controller ,
      validator: (value){
        if(value==null||value.isEmpty){
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon:suffixIcon ,
        hintText: hintText,
        hintStyle:AppStyles.Light16.copyWith(
          color: Color(0xffDFDFDF)
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