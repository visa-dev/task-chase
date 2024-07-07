import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:task_chase/packages/color_extension.dart';
import 'package:task_chase/utils/constants/colors.dart';

class KSnackBar {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customSnackBar({required message}) => {
        ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
          elevation: 0,
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.transparent,
          content: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:
                    Theme.of(Get.context!).colorScheme.customSnackBarBgColor),
            child: Center(
              child: Text(
                message,
                style: Theme.of(Get.context!).textTheme.labelLarge,
              ),
            ),
          ),
        ))
      };

  static successSnackBar({required title, message = "",duration=3}) => {
    Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
        duration:  Duration(seconds: duration),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.check,
          color: Colors.white,
        ))
  };

  static waringSnackBar({required title, message = ""}) => {
        Get.snackbar(
            title,
            message,
            isDismissible: true,
            shouldIconPulse: true,
            colorText: Colors.white,
            backgroundColor: KColors.primary,
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 3),
            margin: const EdgeInsets.all(20),
            icon: const Icon(
              Iconsax.warning_2,
              color: Colors.white,
            ))
      };

  static errorSnackBar({required title, message = ""}) => {
    Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        backgroundColor: Colors.red.shade600,
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: Colors.white,
        ))
  };
}
