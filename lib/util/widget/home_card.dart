import 'package:flutter/material.dart';
import 'package:sol_solutions_task/util/widget/app_text_style/app_text_style.dart';

import '../constatnt/app_colors/app_colors.dart';
import '../constatnt/app_images/app_images.dart';
import '../constatnt/app_strings/app_strings.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.black.withOpacity(0.9),
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(AppImages.bigImg, fit: BoxFit.cover),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.red),
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                child: const AppTextAll(
                    text: AppStrings.promo,
                    color: AppColors.whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
