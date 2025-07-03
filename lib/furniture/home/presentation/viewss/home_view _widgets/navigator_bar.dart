// furniture/home/presentation/viewss/home_view _widgets/navigator_bar.dart

import 'package:bag_store_ecommerec/furniture/home/domain/entites/buttom_navigation_bar_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/active_item.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/home_view%20_widgets/in_active_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected, required this.barEntity});
final bool isSelected;
final ButtomNavigationBarEntity barEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected?ActiveItem(image: barEntity.activeImage, name: barEntity.name,) :InActiveItem(
      name: barEntity.name,

      image:barEntity.inactiveImage
    );
  }
}
