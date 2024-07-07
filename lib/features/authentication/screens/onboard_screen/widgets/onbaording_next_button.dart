import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/device/device_utility.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      right: KSizes.defaultSpace,
      bottom: kDeviceUtility.getBottomNavigationBarHeight(),
      child: Obx(() {
        return ElevatedButton(
          onPressed: () => {controller.nextPage()},
          style: ElevatedButton.styleFrom(
            shape: controller.currentPageIndex.value == 2
                ? null
                : const CircleBorder(),
            backgroundColor: KHelperFunctions.isDark(context)
                ? KColors.primary
                : KColors.dark,
          ),
          child: controller.currentPageIndex.value == 2
              ? Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: KSizes.md,
                  ),
                  child: const Text("Finish"),
                )
              : const Icon(Iconsax.arrow_right_3_copy,size: KSizes.md,), // Placeholder
        );
      }),
    );
  }
}
