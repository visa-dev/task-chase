import 'package:get/get.dart';

class ImageSliderController extends GetxController {
  static ImageSliderController get instance => Get.find();

  Rx<int> currentImageIndex = 0.obs;

  void nextImage(length) {
    if (currentImageIndex.value >= 0 && currentImageIndex.value < length-1) {
      currentImageIndex.value += 1;
    }
  }

  void backImage(length) {
    if (currentImageIndex.value > 0 && currentImageIndex.value<length) {
      currentImageIndex.value -= 1;
    }
  }
}
