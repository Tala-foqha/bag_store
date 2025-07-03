// furniture/home/presentation/viewss/home_view _widgets/home_view_body.dart
import 'package:bag_store_ecommerec/core/helper_function/build_error_bar.dart';
import 'package:bag_store_ecommerec/core/helper_function/fet_dummy_products.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/best_selling_products/best_selling_products_cubit.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/manger/get_products/get_products_cubit.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/all_brands_and_see_all_widgets.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/bag_with_details_item_list_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/brand_item_list_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/home_view_header.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/home_view_search.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/popular_and_see_all_widget.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/popular_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<GetProductsCubit>().getProducts();
    context.read<BestSellingProductsCubit>().getProducts();
  }

  List<ProductsEntity> items = [];
  List<ProductsEntity>products=[];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: HomeViewHeader(),
            ),
            SizedBox(height: 16),
            HomeViewSearch(),
            SizedBox(height: 16),
            AllBrandsAndSeeAllWidgets(),
            SizedBox(height: 16),
            BrandItemListView(),
            SizedBox(height: 24),
            BlocBuilder<GetProductsCubit, GetProductsState>(
              builder: (context, state) {
                if (state is GetProductsFailure) {
                  buildErrorBar(context: context, message: state.errormessage);
                }
                if (state is GetProductsSuccess) {
                  items = state.products;
                  print('length:${state.products.length}');

                  return BagWithDetailsItemListView(items: items);
                }
                return Skeletonizer(
                  enabled: true,
                  child: BagWithDetailsItemListView(
                    items: getDummyProducts(),));
              },
            ),
            SizedBox(height: 24),
            PopularAndSeeAllWidgets(),
            SizedBox(height: 16),
            BlocBuilder<BestSellingProductsCubit, BestSellingProductsState>(
              builder: (context, state) {
                if (state is BestSellingProdutsFailure) {
                 buildErrorBar(context: context, message: state.errormessage);
                }
                if (state is BestSellingProdutsSuccess) {
                  products=state.bestProducts;
                  return PopularItemsListView(products: products,);
                }
                return Skeletonizer(
                  enabled: true,
                  child: PopularItemsListView(
                   products: getDummyProducts() ,));
              },
            ),
          ],
        ),
      ),
    );
  }
}
