// furniture/home/presentation/viewss/widgets/bag_with_details_item_list_view.dart
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/bag_with_deatails_item.dart';
import 'package:flutter/widgets.dart';

class BagWithDetailsItemListView extends StatelessWidget {
  const BagWithDetailsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: bagWithDetailsItem(),
          );
      
      }),
    );
  }
}