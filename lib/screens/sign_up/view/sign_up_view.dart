import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/util/constatnt/app_images/app_images.dart';

import '../../../util/constatnt/app_strings/app_strings.dart';
import '../../../util/widget/button/app_button.dart';
import '../../../util/widget/horizontal_line.dart';
import '../../../util/widget/sign_in_widget/signin_container.dart';
import '../../../util/widget/text_filed.dart';
import '../../home_page/binding/home_binding.dart';
import '../../home_page/view/home_view.dart';
import '../controller/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    // var width = Get.width;
    return Scaffold(
        body: Stack(
      children: [
        const SignInContainer(text: AppStrings.signup),
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
                  SizedBox(height: height * 0.03),
                  const CustomTextField(hintText: AppStrings.rePass),
                  SizedBox(height: height * 0.04),
                  const HorizontalLinesWithText(text: AppStrings.orRegister),
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.google),
                      SizedBox(width: width * 0.04),
                      Image.asset(AppImages.fb)
                    ],
                  ),
                  SizedBox(height: height * 0.06),
                  SignButton(
                      onTap: () {
                        Get.to(const HomeView(), binding: HomeBinding());
                      },
                      text: AppStrings.signIn,
                      width: true,
                      height: true),
                  SizedBox(height: height * 0.04),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
