import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/image_strings.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';
import 'package:task_chase/utils/theme/custom_themes/enums.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: KSizes.defaultSpace, vertical: KSizes.sm),
              decoration: BoxDecoration(
                  border: Border.all(color: KColors.darkGrey),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    KImages.google,
                    width: KSizes.iconMd,
                  ),
                  const SizedBox(width: KSizes.spaceBtwSections),
                  const Text("Continue with Google")
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: KSizes.md),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: KSizes.defaultSpace, vertical: KSizes.sm),
            decoration: BoxDecoration(
                border: Border.all(color: KColors.darkGrey),
                borderRadius: BorderRadius.circular(100)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  KImages.facebook,
                  width: KSizes.iconMd,
                ),
                const SizedBox(width: KSizes.spaceBtwSections),
                const Text("Continue with Facebook")
              ],
            ),
          ),
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: KSizes.defaultSpace, vertical: KSizes.sm),
            decoration: BoxDecoration(
                border: Border.all(color: KColors.darkGrey),
                borderRadius: BorderRadius.circular(100)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  KImages.apple,
                  width: KSizes.iconMd,
                  colorFilter: KHelperFunctions.isDark(context)
                      ? (const ColorFilter.mode(Colors.white, BlendMode.srcIn))
                      : (null),
                ),
                const SizedBox(width: KSizes.spaceBtwSections),
                const Text(
                  "Continue with Apple",
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
