import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sol_solutions_task/screens/sign_in/binding/sign_in_binding.dart';
import 'package:sol_solutions_task/screens/sign_in/view/sign_in_view.dart';
import 'package:sol_solutions_task/util/constatnt/app_icon/app_icons.dart';
import 'package:sol_solutions_task/util/constatnt/app_images/app_images.dart';
import 'package:sol_solutions_task/util/constatnt/app_strings/app_strings.dart';
import 'package:sol_solutions_task/util/widget/button/app_button.dart';

import '../../../util/widget/app_text_style/app_text_style.dart';
import '../../../util/widget/sign_in_widget/welcom_container.dart';
import '../../home_page/binding/home_binding.dart';
import '../../home_page/view/home_view.dart';
import '../../sign_up/binding/sign_up_binding.dart';
import '../../sign_up/view/sign_up_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: height * 0.04),
          Center(
            child: SvgPicture.asset(
              AppImages.group,
              width: 200,
              height: 200,
            ),
          ),
          WelcomeContainer(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06, vertical: height * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppTextStyle(text: AppStrings.welcome),
                  SizedBox(height: height * 0.03),
                  const AppTextStyle(
                      text: AppStrings.welcomeParh,
                      fontSize: false,
                      fontWeight: false),
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SignButton(
                          onTap: () {
                            Get.to(const SignInView(),
                                binding: SignInBinding());
                          },
                          text: AppStrings.signIn),
                      SignButton(
                          onTap: () {
                            Get.to(const SignUpView(),
                                binding: SignUpBinding());
                          },
                          text: AppStrings.signup),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.2),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const HomeView(), binding: HomeBinding());
                      },
                      child: SizedBox(
                        child: Row(children: [
                          const AppTextAll(
                              text: AppStrings.continueAS,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          SizedBox(width: width * 0.05),
                          const Icon(AppIcons.forward)
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
