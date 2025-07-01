// furniture/home/presentation/viewss/home_view.dart
import 'package:bag_store_ecommerec/core/services/get_it_services.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_repo.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/manger/best_selling_products/best_selling_products_cubit.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/manger/get_products/get_products_cubit.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/home_view_body.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/home_view_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'Home-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: HomeViewNavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white, // من الأعلى أبيض
                Color(0xffF7F7F7), // إلى الأسفل رمادي فاتح جداً
              ],
            ),
          ),
          child: MultiBlocProvider(
          
            providers: [
              BlocProvider<GetProductsCubit>(create: (_)=>GetProductsCubit(getIt.get<ProductsRepo>())),
              BlocProvider<BestSellingProductsCubit>(create: (_)=>BestSellingProductsCubit(getIt.get<ProductsRepo>())),



            ],
            child: HomeViewBody(),
          ),
        ),
      ),
    );
  }
}
