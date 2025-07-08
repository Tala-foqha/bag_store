// furniture/splash/presentation/views/widgets/splash_view_body.dart
import 'package:bag_store_ecommerec/core/services/shared_preffrence_singlton.dart';
import 'package:bag_store_ecommerec/core/utils/constant.dart';
import 'package:bag_store_ecommerec/furniture/auth/presentation/views/signin_view.dart';
import 'package:bag_store_ecommerec/furniture/on_bording/presentation%5D/views/on_bording_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();
    excuteNavigation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 129.33),
      child: Center(
        child: SlideTransition(
          position: _slideAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Image.asset('assets/images/Vector.png'),
          ),
        ),
      ),
    );
  }

  void excuteNavigation() {
    bool kisOnBordingViewSeen=SharedPreffrenceSinglton.getBool(isOnBordingViewSeen);
    Future.delayed(Duration(seconds: 3), () {
      if(kisOnBordingViewSeen){
      Navigator.pushReplacementNamed(context, SigninView.routeNmae);
  }else{
          Navigator.pushReplacementNamed(context, OnBordingView.routeName);

  }
  });
  }
}
