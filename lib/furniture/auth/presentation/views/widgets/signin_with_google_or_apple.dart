// furniture/auth/presentation/views/widgets/signin_with_google_or_apple.dart

import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SigninWithGoogleOrAppleItem extends StatelessWidget {
  const SigninWithGoogleOrAppleItem({
    super.key, required this.socialName, required this.path,
  });
  final String socialName;
  final String path;

  @override
  Widget build(BuildContext context) {
return Container(
  
  height: 56,

  decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(16),
  side: BorderSide(
    width: 1,
    color: Color(0xffDFDFDF)
  )
)
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       SvgPicture.asset(path),
      SizedBox(width: 10,),
      Text(socialName,style: AppStyles.Light16.copyWith(
        color: Color(0xff070A03)
      ),),],),) ; }}
