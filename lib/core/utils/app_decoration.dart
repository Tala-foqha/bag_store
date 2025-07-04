// core/utils/app_decoration.dart
import 'package:flutter/cupertino.dart';

abstract class AppDecoration {
  static var greyBoxDecoration=ShapeDecoration(
    color: Color(0x7FF2F3F3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(4)
    )


  );
}