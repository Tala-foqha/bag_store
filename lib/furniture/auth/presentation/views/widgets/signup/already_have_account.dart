// furniture/auth/presentation/views/widgets/signup/already_have_account.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account? ',
        style: AppStyles.Light14.copyWith(
          color: Color(0xff070A03)
        ),
        ),
        Text('Login ',
        style: AppStyles.meduim24.copyWith(
          
          color: Color(0xff070A03),
          fontSize: 14
        ),
        ),
      ],
    );
  }
}