// core/helper_function/build_error_bar.dart
import 'package:flutter/material.dart';

void showBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 1),
      content: Text(message),
    ),
  );
}