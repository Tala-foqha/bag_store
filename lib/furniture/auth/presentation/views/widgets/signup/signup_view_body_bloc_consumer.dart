// furniture/auth/presentation/views/widgets/signup/signup_view_body_bloc_consumer.dart

import 'package:bag_store_ecommerec/core/helper_function/build_error_bar.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/signup/signup_cubit.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signup/signup_view_bodu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if(state is SignupSuccess){
          Navigator.of(context).pop();
        }
        if(state is SignupFailure){
          buildErrorBar(context, state.message);
        }
       
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading?true:false,
          child: SignupViewBody());
      },
    );
  }

}