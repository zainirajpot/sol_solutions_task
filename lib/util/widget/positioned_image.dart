import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PositionedImage extends StatelessWidget {
  final double top;
  final double left;
  final String imagePath;

  const PositionedImage({
    super.key,
    required this.top,
    required this.left,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    var height=Get.height;
    return Positioned(
      top: top,
      left: left,
      child: Image.asset(
        imagePath,
        height: height * 0.35,
        fit: BoxFit.contain,
      ),
    );
  }
}
