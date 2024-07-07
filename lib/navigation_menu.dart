import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/features/user/controllers/bottom_navigation/navigation_controller.dart';

import 'package:task_chase/utils/constants/colors.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = KHelperFunctions.isDark(context);

    const  bool isClient = true;
//final bool isHome=true;
    final bool isDrak = KHelperFunctions.isDark(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          elevation: 0,
          onDestinationSelected: (index) =>
              {controller.selectedIndex.value = index},
          backgroundColor: darkMode ? (KColors.dark) : (KColors.white),
          // indicatorColor: darkMode
          //     ? (TColors.white.withOpacity(0.1))
          //     : (TColors.dark.withOpacity(0.1)),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home_1_copy), label: "Home"),
            NavigationDestination(
                icon: Icon(Iconsax.notification_copy), label: "Notification"),
            NavigationDestination(
                icon: Icon(Iconsax.message_copy), label: "Messages"),
            NavigationDestination(
                icon: Icon(Iconsax.profile_circle_copy), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      floatingActionButton: Container(
          height: 50.0,
          width: 50.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: KColors.floatingAddButtonColor),
          child: IconButton(
              icon: Icon(
                Iconsax.add_copy,
                size: KSizes.iconLg,
                color: isDrak ? (Colors.black) : (Colors.black),
              ),
              onPressed: () => {
                    isClient
                        ? (Get.toNamed("/post-job"))
                        : (Get.toNamed("/freelancer/post-project"))
                  })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
