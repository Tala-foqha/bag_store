// furniture/auth/presentation/views/signin_view.dart
import 'package:bag_store_ecommerec/core/services/get_it_services.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/signin_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeNmae = 'Signin-view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRebo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SigninViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
