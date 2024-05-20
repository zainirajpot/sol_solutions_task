import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/screens/on_boarding/binding/on_boarding_binding.dart';

import '../on_boarding/view/on_boarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(() => const OnBoardingView(), binding: OnBoardingBinding());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -10,
            right: -10,
            child: Image.asset(
              'images/elllipsetop.png',
              width: 200,
              height: 200,
            ),
          ),
          Center(
            child: SvgPicture.asset(
              'images/Group 2.svg',
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: -20,
            left: 0,
            child: Image.asset(
              'images/elipsebottam.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
