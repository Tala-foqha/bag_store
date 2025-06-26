// core/helper_function/on_generate_route.dart
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signin_view.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signup_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view.dart';
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

    case HomeView.routeName:
    return MaterialPageRoute(builder: (contex)=>HomeView());


   default: 
   return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}