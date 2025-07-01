// furniture/home/presentation/viewss/home_view _widgets/bag_with_details_item_list_view.dart
import 'package:bag_store_ecommerec/furniture/home/domain/repos/products_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/bag_with_deatails_item.dart';
import 'package:flutter/widgets.dart';

class BagWithDetailsItemListView extends StatelessWidget {
  const BagWithDetailsItemListView({super.key, required this.items});
 final List<ProductsEntity>items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 445,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: BagWithDetailsItem(
              products:items[ index],
            ),
          );
      
      }),
    );
  }
}