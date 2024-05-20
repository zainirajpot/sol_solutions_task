import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/home_model.dart';
import '../constatnt/app_colors/app_colors.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return HorizontalContainer(
          child: Image.asset(
            images[index].imagePath,
            width: 60,
            height: 60,
          ),
        );
      },
    );
  }
}

class HorizontalContainer extends StatelessWidget {
  final Widget child;
  const HorizontalContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    return Container(
      width: width * 0.144,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.greyContainer,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}
