import 'package:flutter/material.dart';

class KHelperFunctions {
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double bottomNavigationHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }
}
