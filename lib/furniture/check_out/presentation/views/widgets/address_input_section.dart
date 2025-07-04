// furniture/check_out/presentation/views/widgets/address_input_section.dart
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24,),
         CustomTextField(hintText: 'Full name',
      color:Color(0xffF9FAFA) ,
      colortext:Color(0xff949D9E) ,
         ),
           SizedBox(height: 16,),
          CustomTextField(hintText: 'email',
        color:Color(0xffF9FAFA) ,
        colortext:Color(0xff949D9E) ,
          ),
                   SizedBox(height: 16,),
      
          CustomTextField(hintText: 'Address',
          color:Color(0xffF9FAFA) ,
          colortext:Color(0xff949D9E) ,
          ),
                   SizedBox(height: 16,),
      
          CustomTextField(hintText: 'City',
          color:Color(0xffF9FAFA) ,
          colortext:Color(0xff949D9E) ,
          ),
                   SizedBox(height: 16,),
      
         CustomTextField(hintText: 'Enter full name',
        colortext:Color(0xff949D9E) ,
        color:Color(0xffF9FAFA) ,),
         SizedBox(height: 16,),
        
        CustomTextField(hintText: 'Floor number,Apartment number',
        colortext:Color(0xff949D9E) ,
        color:Color(0xffF9FAFA) ,),
      
        SizedBox(height: 16,),
        
        CustomTextField(hintText: 'Mobile number',
        colortext:Color(0xff949D9E) ,
        color:Color(0xffF9FAFA) ,),
        SizedBox(height: 16,),
      
      
      
      
      
      
      
        ],
      ),
    );
  }
}