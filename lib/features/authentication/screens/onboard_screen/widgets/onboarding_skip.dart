import 'package:flutter/material.dart';
import 'package:task_chase/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/device/device_utility.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: kDeviceUtility.getAppBarHeight(),
        right: KSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip"),
        ));
  }
}
