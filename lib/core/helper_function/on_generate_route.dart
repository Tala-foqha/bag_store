// core/helper_function/on_generate_route.dart
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signin_view.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signup_view.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/check_out_view.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/entites/cart_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/main_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/profile_view.dart';
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/on_bording_view.dart';
import 'package:bag_store_ecommerec/furniture/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';


Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeNme:
    return MaterialPageRoute(builder: (contex)=>SplashView());
    case OnBordingView.routeName:
    return MaterialPageRoute(builder: (contex)=>OnBordingView());


case SigninView.routeNmae:
    return MaterialPageRoute(builder: (contex)=>SigninView());
    
case SignupView.routeName:
    return MaterialPageRoute(builder: (contex)=>SignupView());

    case MainView.routeName:
    return MaterialPageRoute(builder: (contex)=>MainView());

    
    case ProfileView.routeName:
    return MaterialPageRoute(builder: (contex)=>ProfileView());

    
    case CheckOutView.routeName:
    return MaterialPageRoute(builder: (contex)=>CheckOutView(
      cartEntity: settings.arguments as CartEntity,
    ));



   default: 
   return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}