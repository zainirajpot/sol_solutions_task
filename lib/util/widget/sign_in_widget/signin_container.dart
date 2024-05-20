import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constatnt/app_colors/app_colors.dart';
import '../../constatnt/app_strings/app_strings.dart';
import '../app_text_style/app_text_style.dart';

var height = Get.height;
var width = Get.width;

class SignInContainer extends StatelessWidget {
  final String text;
  const SignInContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.5,
      width: width,
      decoration: const BoxDecoration(
        color: AppColors.amber,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.06, vertical: height * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back)),
              const AppTextAll(
                  text: AppStrings.register,
                  fontWeight: FontWeight.bold,
                  fontSize: 17)
            ]),
            SizedBox(height: height * 0.02),
             AppTextAll(
                text: text,
                fontSize: 28,
                fontWeight: FontWeight.bold),
            SizedBox(height: height * 0.02),
            const AppTextAll(
                text: AppStrings.welcomeParh,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}

class SignUpRoundContainer extends StatelessWidget {
  final Widget child;
  const SignUpRoundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}

class SizedBoxContainer extends StatelessWidget {
  final String imagePath;
  final String labelText;
  final IconData iconData;

  const SizedBoxContainer({
    super.key,
    required this.imagePath,
    required this.labelText,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.07,
      child: Card(
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.8),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
            ),
            SizedBox(width: width * 0.04),
            AppTextAll(
              fontWeight: FontWeight.w500,
              text: labelText,
            ),
            Spacer(),
            Icon(
              iconData,
              size: 26,
            ),
            SizedBox(width: width * 0.04),
          ],
        ),
      ),
    );
  }
}
