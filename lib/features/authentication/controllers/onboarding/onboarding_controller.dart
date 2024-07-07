import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_chase/features/authentication/screens/login_screen/login.dart';


class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPageIndex.value = pageController.page?.round() ?? 0;
    });
  }

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      GetStorage().write("isFirstTime", false);
     Get.offAll(const Login());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
