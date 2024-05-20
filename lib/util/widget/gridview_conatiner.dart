import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/util/constatnt/app_icon/app_icons.dart';

import '../../model/home_grid_view_model.dart';
import '../../screens/detail_page/binding/detail_binding.dart';
import '../../screens/detail_page/view/detail.view.dart';
import '../../screens/home_page/controller/home_controller.dart';
import '../constatnt/app_colors/app_colors.dart';
import 'app_text_style/app_text_style.dart';

class GridViewContainer extends StatelessWidget {
  final double width;
  final double height;
  final HomeController controller;

  const GridViewContainer({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 27,
        childAspectRatio: 0.89,
        mainAxisExtent: 244,
      ),
      itemCount: imagesscnd.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.to(const DetailView(), binding: DetailBinding()),
          child: SizedBox(
            width: width * 0.9,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 94, left: width * 0.3),
                    child: OverflowBox(
                      maxHeight: height * 0.3,
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        imagesscnd[index].imagePathBottle,
                        height: height * 0.2,
                        width: width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Obx(
                    () => GestureDetector(
                      onTap: () => controller.toggleFavorite(index),
                      child: CircleAvatar(
                        backgroundColor: controller.isFavoritedList[index]
                            ? AppColors.red
                            : AppColors.whiteColor,
                        child: Icon(
                          controller.isFavoritedList[index]
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.06),
                      AllertaStencilText(text: imagesscnd[index].text),
                      SizedBox(height: height * 0.02),
                      AllertaStencilText(text: imagesscnd[index].ml),
                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AllertaStencilText(
                              text: imagesscnd[index].price,
                              color: AppColors.whiteColor),
                          const CircleAvatar(
                            backgroundColor: AppColors.whiteColor,
                            child: Icon(AppIcons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
