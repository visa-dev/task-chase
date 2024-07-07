import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: isDark
            ? KColors.appBarBackgroundColorDarkMode
            : KColors.appBarBackgroundColorLightMode,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                CupertinoIcons.clear,
                color: isDark ? Colors.white : Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: KSizes.defaultSpace, vertical: KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(KTexts.resetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(KTexts.resetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(
                height: KSizes.spaceBtwItems * 2,
              ),
              const Text("Password"),
              const InputField(
                suffixIcon: Iconsax.eye_slash,
                // prefixIcon: Icon(Iconsax.lock),
                isPassword: true,
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields,
              ),
              const Text("Conform Password"),
              const InputField(
                suffixIcon: Iconsax.eye_slash,
                // prefixIcon: Icon(Iconsax.lock),
                isPassword: true,
              ),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () =>
                        Get.toNamed('/reset-password/success-screen'),
                    child: const Text(KTexts.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
