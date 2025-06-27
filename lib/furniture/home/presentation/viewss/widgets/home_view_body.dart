// furniture/home/presentation/viewss/widgets/home_view_body.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/all_brands_and_see_all_widgets.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/bag_with_details_item_list_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/brand_item_list_view.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_header.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/home_view_search.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/popular_and_see_all_widget.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/popular_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
            SizedBox(height: 16,),
            HomeViewSearch(),
            SizedBox(height: 16,),
            AllBrandsAndSeeAllWidgets(),
            SizedBox(height: 16,),
            BrandItemListView(),
            SizedBox(height: 24,),
            BagWithDetailsItemListView(),
            SizedBox(height: 24,),
            PopularAndSeeAllWidgets(),
            SizedBox(height: 16,),
            PopularItemsListView()
            
        
        
          ],
        ),
      ),
    );
  }
}
