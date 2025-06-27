// furniture/home/presentation/viewss/widgets/home_view_nav_bar.dart
import 'package:bag_store_ecommerec/furniture/home/domain/buttom_navigation_bar_entity.dart';
import 'package:bag_store_ecommerec/furniture/home/presentation/viewss/widgets/navigator_bar.dart';
import 'package:flutter/material.dart';

class HomeViewNavBar extends StatefulWidget {
  const HomeViewNavBar({super.key});

  @override
  State<HomeViewNavBar> createState() => _HomeViewNavBarState();
}

class _HomeViewNavBarState extends State<HomeViewNavBar> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      width: 375,
      decoration:BoxDecoration(
        color: Colors.white
      ) ,child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children:buttomNavigationBar.asMap().entries.map((e){
var index=e.key;
var entity=e.value;
return Expanded(child: GestureDetector(
  onTap:(){ 
    selectedIndex=index;
    setState(() {
      
    });
  },
  child: NavigationBarItem(barEntity: entity, isSelected: selectedIndex==index,)));
   }).toList(),
      )
    );
  }
}

