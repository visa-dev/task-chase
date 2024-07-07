import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/common/widgets/input.dart';
import 'package:task_chase/navigation_menu.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
// Import your custom InputField widget

class LoginUserDataForm extends StatelessWidget {
  const LoginUserDataForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSizes.spaceBtwSections),
        child: Column(
          children: [
            const InputField(
              prefixIcon: Iconsax.user_copy,
              hintText: "User name or Email",
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields),
            const InputField(
              prefixIcon: Iconsax.lock_copy,
              suffixIcon:Iconsax.eye_slash,
              hintText: "Password",
            ),
            const SizedBox(height: KSizes.sm),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => {Get.toNamed('/forget-password')},
                child: const Text(
                  "Forget Password ?",
                  style: TextStyle(color: KColors.textButtonTextColor),
                ),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text("Continue",
                    style: Theme.of(context).textTheme.headlineSmall),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
