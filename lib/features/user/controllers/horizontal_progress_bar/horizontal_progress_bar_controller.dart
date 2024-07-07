import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalProgressBarController extends GetxController {
  static HorizontalProgressBarController get instance => Get.find();

  Rx<int> currentStep = 0.obs;
  final pageController = PageController();

  void nextStep(length) {
    if (currentStep.value >= 0 && currentStep.value <length-1) {
      currentStep.value += 1;
      pageController.jumpToPage(currentStep.value);
    }
  }

  void backStep(length) {
    if (currentStep.value > 0 && currentStep.value < length) {
      currentStep.value -= 1;
      pageController.jumpToPage(currentStep.value);

    }
  }
}
