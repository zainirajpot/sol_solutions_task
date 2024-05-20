import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/model/home_grid_view_model.dart';
import 'package:sol_solutions_task/util/constatnt/app_images/app_images.dart';

import '../../../util/widget/gridview_conatiner.dart';
import '../../../util/widget/home_card.dart';
import '../../../util/widget/listview_container.dart';
import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    controller.initializeFavorites(imagesscnd.length);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            children: [
              SizedBox(height: height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppImages.icon, height: 24, width: 24),
                  Image.asset(AppImages.person, height: 24, width: 24)
                ],
              ),
              const HomeCard(),
              SizedBox(height: height * 0.02),
              SizedBox(
                height: 90,
                child: ListViewContainer(width: width),
              ),
              SizedBox(
                  width: width,
                  height: height * 0.9,
                  child: GridViewContainer(width: width, height: height, controller: controller)),
            ],
          ),
        ),
      ),
    );
  }
}

