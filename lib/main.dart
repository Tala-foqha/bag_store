// main.dart
import 'package:bag_store_ecommerec/core/helper_function/on_generate_route.dart';
import 'package:bag_store_ecommerec/core/services/custom_bloc_observer.dart';
import 'package:bag_store_ecommerec/core/services/get_it_services.dart';
import 'package:bag_store_ecommerec/firebase_options.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signin_view.dart';
import 'package:bag_store_ecommerec/furniture/check_out/presentation/views/check_out_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/cart_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/main_view.dart';
import 'package:bag_store_ecommerec/furniture/splash/presentation/views/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer=CustomBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setup();
  runApp(const BagStore());
}
class BagStore extends StatelessWidget {
  const BagStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      onGenerateRoute: onGenerateRoute,
      initialRoute: MainView.routeName,
    );
  }
}
