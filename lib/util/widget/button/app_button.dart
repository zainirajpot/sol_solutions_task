import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/util/constatnt/app_colors/app_colors.dart';
import 'package:sol_solutions_task/util/widget/app_text_style/app_text_style.dart';

import '../../constatnt/app_strings/app_strings.dart';

var screenHeight = Get.height;
var screenWidth = Get.width;

class SignButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool height;
  final bool width;

  const SignButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.height = false,
    this.width = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = Get.height;
    var screenWidth = Get.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ? screenHeight * 0.066 : screenHeight * 0.06,
        width: width ? screenWidth * 0.8 : screenWidth * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: screenHeight * 0.06,
          width: screenWidth * 0.4,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                Color(0xFFF4C314),
                Color(0xffFF8603),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
              child: AppTextAll(
            text: AppStrings.byNow,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ))),
    );
  }
}
