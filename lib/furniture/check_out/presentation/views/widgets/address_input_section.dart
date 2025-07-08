// furniture/check_out/presentation/views/widgets/address_input_section.dart
import 'package:bag_store_ecommerec/core/widgets/custom_text_field.dart';
import 'package:bag_store_ecommerec/furniture/check_out/domain/entites/order_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key, required this.formKey, required this.valueListenable});
final GlobalKey<FormState>formKey;
final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable:valueListenable ,
        builder: (context,value,child)=> 
        Form(
       autovalidateMode: value,
         key: formKey,
  
  child: Column(
    children: [
      SizedBox(height: 24),
      CustomTextField(
        hintText: 'Full name',
        onSaved: (value) {
          context.read<OrderInputEntity>().shippingAddressEntity!.name = value!;
        },
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Full name is required';
          }
          return null;
        },
        color: Color(0xffF9FAFA),
        colortext: Color(0xff949D9E),
      ),
      SizedBox(height: 16),
      CustomTextField(
        hintText: 'email',
        onSaved: (value) {
          context.read<OrderInputEntity>().shippingAddressEntity!.email = value!;
        },
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Email is required';
          }
          if (!value.contains('@')) {
            return 'Enter a valid email';
          }
          return null;
        },
        color: Color(0xffF9FAFA),
        colortext: Color(0xff949D9E),
      ),
      SizedBox(height: 16),
      CustomTextField(
        hintText: 'Address',
        onSaved: (value) {
          context.read<OrderInputEntity>().shippingAddressEntity!.address = value!;
        },
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Address is required';
          }
          return null;
        },
        color: Color(0xffF9FAFA),
        colortext: Color(0xff949D9E),
      ),
      SizedBox(height: 16),
      CustomTextField(
        hintText: 'City',
        onSaved: (value) {
          context.read<OrderInputEntity>().shippingAddressEntity!.city = value!;
        },
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'City is required';
          }
          return null;
        },
        color: Color(0xffF9FAFA),
        colortext: Color(0xff949D9E),
      ),
      SizedBox(height: 16),
      CustomTextField(
        hintText: 'Floor number, Apartment number',
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Floor number, Apartment number is required';
          }
          return null;
        },
        
        onSaved: (value) {
          context.read<OrderInputEntity>().shippingAddressEntity!.addressDetails = value!;
        },
        // Optional: no validator
        color: Color(0xffF9FAFA),
        colortext: Color(0xff949D9E),
      ),
      SizedBox(height: 16),
      CustomTextField(
        hintText: 'Mobile number',
        onSaved: (value) {
          context.read<OrderInputEntity>().shippingAddressEntity!.phone = value!;
        },
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'Mobile number is required';
          }
          return null;
        },
        color: Color(0xffF9FAFA),
        colortext: Color(0xff949D9E),
      ),
      SizedBox(height: 16),
    ],
  ),
),
      )
      );}}