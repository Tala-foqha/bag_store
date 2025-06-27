// furniture/home/presentation/viewss/widgets/home_view_nav_bar.dart
import 'package:bag_store_ecommerec/core/utils/app_styles.dart';
import 'package:bag_store_ecommerec/furniture/home/domain/buttom_navigation_bar_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewNavBar extends StatelessWidget {
  const HomeViewNavBar({super.key});

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
   children:buttomNavigationBar.map((e)=>Expanded(child: NavigationBarItem(isSelected: false, barEntity: e,))).toList()
        
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.image, required this.name
  });
   final String image;
   final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // يوسّط كل شي عموديًا
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10,),
        SvgPicture.asset(image),
        SizedBox(height: 2,),
        Text(name,
        style: AppStyles.Light14.copyWith(
          color: Color(0xffA1A1A1),
          fontSize: 12
        ),
        )
      ],
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected, required this.barEntity});
final bool isSelected;
final ButtomNavigationBarEntity barEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected?ActiveItem() :InActiveItem(
      name: barEntity.name,

      image:barEntity.inactiveImage
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}