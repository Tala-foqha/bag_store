// furniture/auth/presentation/views/widgets/signin/signin_view_body_bloc_consumer.dart

import 'package:bag_store_ecommerec/core/helper_function/build_error_bar.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/manager/cubits/signin/signin_cubit.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/widgets/signin/signin_view_body.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder:(context){
    return   BlocConsumer<SigninCubit, SigninState>(
        listener: (context, state) {
          if(state is SiginFailure){
          showBar(context, state.message);
        }
                    // buildErrorBar(context: context,message:  state.messege);
      
          
          if(state is SigninSuccess){
            Navigator.pushNamed(context, MainView.routeName);
          }
      
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is SigninLoading?true:false,
            child: SigninViewBody(state: state,));
        },
      );
      },
      
    );
  
  }
}
