// furniture/auth/presentation/views/signup_view.dart
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/signin_view_body.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/signup_view_bodu.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
static const routeName='signup-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(child: SignupViewBody()) ,
    );
  }
}