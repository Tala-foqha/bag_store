// furniture/auth/presentation/views/signin_view.dart
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/signin_view_body.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
static const routeNmae='Signin-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SigninViewBody()),
    );
  }
}