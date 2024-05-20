import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/screens/home_page/binding/home_binding.dart';
import 'package:sol_solutions_task/screens/home_page/view/home_view.dart';

import '../../../util/constatnt/app_icon/app_icons.dart';
import '../../../util/constatnt/app_images/app_images.dart';
import '../../../util/constatnt/app_strings/app_strings.dart';
import '../../../util/widget/app_text_style/app_text_style.dart';
import '../../../util/widget/button/app_button.dart';
import '../../../util/widget/sign_in_widget/signin_container.dart';
import '../../../util/widget/text_filed.dart';
import '../controller/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
        body: Stack(
      children: [
        const SignInContainer(text: AppStrings.signIn,),
        Padding(
          padding: EdgeInsets.only(top: height * 0.27),
          child: SignUpRoundContainer(
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: Column(
                children: [
                  SizedBox(height: height * 0.05),
                  const CustomTextField(hintText: AppStrings.username),
                  SizedBox(height: height * 0.03),
                  const CustomTextField(hintText: AppStrings.password),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.6),
                    child: const AppTextAll(
                      text: AppStrings.forgotP,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  SignButton(
                    onTap: () {Get.to(const HomeView(),binding: HomeBinding());},
                    text: AppStrings.signIn,
                    width: true,
                    height: true,
                  ),
                  SizedBox(height: height * 0.04),
                  const SizedBoxContainer(
                    imagePath: AppImages.google,
                    labelText: AppStrings.google,
                    iconData: AppIcons.forward,
                  ),
                  SizedBox(height: height * 0.04),
                  const SizedBoxContainer(
                    
                    imagePath: AppImages.fb,
                    labelText: AppStrings.fb,
                    iconData: AppIcons.forward,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
