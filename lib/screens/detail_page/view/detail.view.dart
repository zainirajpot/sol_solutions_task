import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/util/constatnt/app_images/app_images.dart';
import 'package:sol_solutions_task/util/widget/positioned_image.dart';

import '../../../util/constatnt/app_colors/app_colors.dart';
import '../../../util/constatnt/app_strings/app_strings.dart';
import '../../../util/widget/app_text_style/app_text_style.dart';
import '../../../util/widget/detail_white_container.dart';
import '../controller/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.amber,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: AppColors.amber,
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.177, right: width * 0.5),
                child: const Column(
                  children: [
                    AppTextAll(
                        text: AppStrings.corona,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor),
                    AppTextAll(
                        text: AppStrings.extra,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor),
                    AppTextAll(
                        text: AppStrings.ml,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.05),
              child: Row(
                children: [
                  Image.asset(AppImages.backButon, height: 24, width: 24),
                  SizedBox(width: width * 0.07),
                  Image.asset(AppImages.icon, height: 24, width: 24),
                  SizedBox(width: width * 0.622),
                  Image.asset(AppImages.shoping, height: 24, width: 24),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: DetailWhiteContainer(height: height, width: width),
            ),
            PositionedImage(
                top: height * 0.15,
                left: width * 0.53,
                imagePath: AppImages.img5),
            PositionedImage(
              imagePath: AppImages.img5,
              left: width * 0.340,
              top: height * 0.15,
            ),
            PositionedImage(
              left: width * 0.44,
              imagePath: AppImages.img5,
              top: height * 0.17,
            ),
            SizedBox(width: width * 0.6),
          ],
        ),
      ),
    );
  }
}

