// furniture/auth/presentation/views/widgets/signin/signin_with_email_or_apple.dart

import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/signin_with_google_or_apple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SiginWithGoogleOrApple extends StatelessWidget {
  const SiginWithGoogleOrApple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: GestureDetector(
          onTap: () {
  context.read<SigninCubit>().signinWithGoogle();
  //Navigator.pushNamed(context, MainView.routeName);
},

          child: SigninWithGoogleOrAppleItem(
            path: 'assets/images/google icon.svg',
           socialName: 'Google',),
        )),
        SizedBox(width: 16,),
        Expanded(child: SigninWithGoogleOrAppleItem(socialName: 'Apple', 
        path: 'assets/images/apple_icon.svg',)),
      ],
    );
  }
}
