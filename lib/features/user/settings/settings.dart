import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_chase/packages/color_extension.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(
              bottom: KSizes.spaceBtwSections * 2, left: KSizes.defaultSpace),
          child: Text("Settings",
              style: Theme.of(context).textTheme.headlineLarge),
        ),
        Container(
          color: Theme.of(context).colorScheme.settingsScreenBgColor,
          padding: const EdgeInsets.symmetric(
              vertical: KSizes.spaceBtwSections,
              horizontal: KSizes.defaultSpace),
          child: Column(children: [
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(Icons.privacy_tip),
                  const SizedBox(
                    width: KSizes.md,
                  ),
                  Text(
                    "Private policy",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: KSizes.defaultSpace,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(Icons.one_k),
                  const SizedBox(
                    width: KSizes.md,
                  ),
                  Text(
                    "Terms and conditions",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: KSizes.defaultSpace,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  const Icon(Icons.logout),
                  const SizedBox(
                    width: KSizes.md,
                  ),
                  Text(
                    "Logout",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: KSizes.defaultSpace,
            ),
            GestureDetector(
              onTap: ()=> {Get.toNamed('/delete')},
              child: Row(
                children: [
                  const Icon(Icons.delete),
                  const SizedBox(
                    width: KSizes.md,
                  ),
                  Text(
                    "Delete Account",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
