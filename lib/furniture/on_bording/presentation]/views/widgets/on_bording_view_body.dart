// furniture/on_bording/presentation]/views/widgets/on_bording_view_body.dart
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/widgets/on_bording_page_view.dart';
import 'package:flutter/material.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OnBordingPageView(
      pageController: _pageController,
      currentPage: currentPage,
    );
  }
}
