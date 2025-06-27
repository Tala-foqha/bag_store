// furniture/home/presentation/viewss/widgets/popular_items_list_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/popular_item.dart';
import 'package:flutter/material.dart';

class PopularItemsListView extends StatelessWidget {
  const PopularItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
     itemCount: 5,
      itemBuilder:
       (context,index){
      return Padding(
        padding: EdgeInsets.only(bottom: index == 4 ? 0 : 16),
        child: PopularItem(),
      );

    });
  }
}