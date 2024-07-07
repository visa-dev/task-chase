import 'package:flutter/material.dart';
import 'package:task_chase/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:task_chase/features/authentication/screens/onboard_screen/widgets/onbaording_next_button.dart';
import 'package:task_chase/features/authentication/screens/onboard_screen/widgets/onboarding_dot_navigation.dart';
import 'package:task_chase/features/authentication/screens/onboard_screen/widgets/onboarding_page.dart';
import 'package:task_chase/features/authentication/screens/onboard_screen/widgets/onboarding_skip.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        PageView(
            controller: controller.pageController,
            onPageChanged: (value) => controller.updatePageIndicator(value),
            children: const [
              OnBoardPage(
                image: KImages.onBoardImage_1,
                title: KTexts.onBoardTitle_1,
                subTitle: KTexts.onBoardSubTitle_1,
              ),
              OnBoardPage(
                image: KImages.onBoardImage_2,
                title: KTexts.onBoardTitle_2,
                subTitle: KTexts.onBoardSubTitle_2,
              ),
              OnBoardPage(
                image: KImages.onBoardImage_3,
                title: KTexts.onBoardTitle_3,
                subTitle: KTexts.onBoardSubTitle_3,
              ),
            ]),
        Obx(() {
          if (controller.currentPageIndex.value < 2) {
            return const OnBoardSkip();
          } else {
            return const SizedBox(); // Placeholder
          }
        }),
        const OnboardingDotNavigation(),
        const OnBoardingNextButton()
      ],
    ));
  }
}
