import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_chase/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/device/device_utility.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: kDeviceUtility.getBottomNavigationBarHeight(),
        left: KSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: (value) => controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: KHelperFunctions.isDark(context)
                  ? (KColors.light)
                  : (KColors.dark),
              dotHeight: 6),
        ));
  }
}
