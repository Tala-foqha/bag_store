// furniture/home/presentation/viewss/profile_view.dart
import 'package:bag_store_ecommerec/core/utils/app_colors.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/profile_view_widgets/profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
static const routeName='profile-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColors.primaryColor,
      // ),
      body: ProfileViewBody(),
    );
  }
}