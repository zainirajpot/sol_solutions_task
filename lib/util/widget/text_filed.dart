import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constatnt/app_colors/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool height;
  final Widget? preIcon;
  final IconData? icon;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.height = false,
    this.keyboardType,
    this.icon,
    this.preIcon,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    //var height = Get.height;
    var width = Get.width;

    return Card(
      color: Colors.white,
      shadowColor: Colors.black.withOpacity(0.8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: TextFormField(
          controller: widget.controller,
          cursorColor: Colors.black,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: AppColors.grey),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 19,
            ),
          ),
          autocorrect: false,
        ),
      ),
    );
  }
}

