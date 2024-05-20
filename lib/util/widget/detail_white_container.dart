import 'package:flutter/material.dart';
import 'package:sol_solutions_task/util/widget/app_text_style/app_text_style.dart';
import 'package:sol_solutions_task/util/widget/button/app_button.dart';

import '../constatnt/app_colors/app_colors.dart';
import '../constatnt/app_strings/app_strings.dart';

class DetailWhiteContainer extends StatelessWidget {
  const DetailWhiteContainer({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.6,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: Colors.black.withOpacity(0.2),
            blurRadius: 3,
            spreadRadius: 2,
            offset: const Offset(4, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(height: height * 0.1),
                const Icon(Icons.star, color: Colors.amber, size: 24),
                const SizedBox(width: 4),
                const Text(
                  '4.9',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
                height: height * 0.05,
                width: width * 0.277,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: AppTextAll(
                    text: AppStrings.desc,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: height * 0.1),
            const AppTextAll(
              text: AppStrings.detail,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.grey,
            ),
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppTextAll(
                  text: AppStrings.ml,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                GradientButton(
                  onPressed: () {},
                  text: AppStrings.byNow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
