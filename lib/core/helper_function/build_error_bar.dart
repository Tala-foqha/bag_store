// core/helper_function/build_error_bar.dart
import 'package:flutter/material.dart';

String buildErrorBar({required BuildContext context,required String message,} ) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
  return message;
}