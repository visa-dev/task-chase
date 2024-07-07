import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class Notification extends StatelessWidget {
  const Notification({
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
          child: Text("Notification",
              style: Theme.of(context).textTheme.headlineLarge),
        ),
        Container(
            padding:
                const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    "A recent sign-in to your  account (47ad92cb) form an unknown device or browser."),
                const SizedBox(
                  height: KSizes.sm,
                ),
                Text(
                  "June 12",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const Divider(
                  thickness: 1.2,
                )
              ],
            ))
      ]),
    );
  }
}
