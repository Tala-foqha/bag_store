// furniture/on_bording/presentation]/views/widgets/on_bording_page_view.dart
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signin_view.dart';
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBordingPageView extends StatelessWidget {
  const OnBordingPageView({super.key, required this.pageController,  this.currentPage=0});
final PageController pageController;
 final int currentPage;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          images: 'assets/images/on_bording_images1.png', 
        subtitle: 'High-quality bags designed to match your\n unique style.',
         buttuntext: 'Next', 
         currentPage: currentPage,
         title: 'Shop Premium Bags at\n Unbeatable Prices', onPressed: () { 
           pageController.nextPage(duration: Duration(milliseconds: 300),
         curve: Curves.easeIn);

          },),
         PageViewItem(images: 'assets/images/on_bording_images2.png',
          title: 'Stay Trendy with Latest\n Bag Designs',
           subtitle: 'Find seasonal trends and timeless classics\n in one place.', 
           buttuntext: 'Next',
           currentPage: currentPage,
           onPressed: () { 
           pageController.nextPage(duration: Duration(milliseconds: 300),
         curve: Curves.easeIn);
           }, 
         ),
           PageViewItem(
            images: 'assets/images/on_bording_imge3.png',
            title: 'Hassle-Free Shopping,\n Anytime, Anywhere',
             subtitle: 'Enjoy a seamless shopping experience on\n your mobile.',
              buttuntext: 'Get Started',
               currentPage: currentPage, onPressed: () {  
                Navigator.pushReplacementNamed(context, SigninView.routeNmae);
               },
               )
      ],
    );
  }
}