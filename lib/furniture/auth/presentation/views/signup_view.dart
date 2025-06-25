// furniture/auth/presentation/views/signup_view.dart
import 'package:bag_store_ecommerec/core/services/get_it_services.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/cubits/signup/signup_cubit.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/signup_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'signup-view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRebo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SignupViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
