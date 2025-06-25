// furniture/auth/presentation/views/widgets/signin_with_email_or_apple.dart

import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin_with_google_or_apple.dart';
import 'package:flutter/material.dart';

class SiginWithGoogleOrApple extends StatelessWidget {
  const SiginWithGoogleOrApple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SigninWithGoogleOrAppleItem(
          path: 'assets/images/google icon.svg',
         socialName: 'Google',)),
        SizedBox(width: 16,),
        Expanded(child: SigninWithGoogleOrAppleItem(socialName: 'Apple', 
        path: 'assets/images/apple_icon.svg',)),
      ],
    );
  }
}
