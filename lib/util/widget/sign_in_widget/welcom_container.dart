import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constatnt/app_colors/app_colors.dart';

class WelcomeContainer extends StatelessWidget {
  final Widget child;
  const WelcomeContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.5,
      width: width,
      decoration: const BoxDecoration(
        color: AppColors.amber,
        border: Border(top: BorderSide(color: Colors.black, width: 1)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: child,
    );
  }
}
