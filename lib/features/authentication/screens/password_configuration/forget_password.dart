import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/constants/texts.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = KHelperFunctions.isDark(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark
            ? KColors.appBarBackgroundColorDarkMode
            : KColors.appBarBackgroundColorLightMode,
        iconTheme: IconThemeData(
          color: isDark
              ? Colors.white
              : Colors.black, // Adjust the color based on the theme mode
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: KSizes.defaultSpace,
              vertical:KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(KTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              Text(KTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(
                height: KSizes.spaceBtwItems * 2,
              ),
              const Text("Email"),
              const SizedBox(
                height: KSizes.spaceBtwLabelAndInput,
              ),
              const InputField(),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.toNamed('/send-email/success-screen'),
                    child: const Text(KTexts.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
