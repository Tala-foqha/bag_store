// furniture/home/presentation/viewss/home_view _widgets/brand_item_list_view.dart
import 'package:bag_store_ecommerec/furniture/home/domain/entites/brand_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/brand_tem.dart';
import 'package:flutter/widgets.dart';

class BrandItemListView extends StatelessWidget {
  const BrandItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context,index){
          return Padding(
padding: EdgeInsets.only(left: 16,
//right: index==0?16:0), 
    )   ,
 child: BrandItem(
              brandEntity: items[index],
            ),
          );
      
      }),
    );
  }
}