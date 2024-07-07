import 'package:flutter/material.dart';

extension CustomColorScheme on ColorScheme {
  Color get jobCardBgColor =>
      brightness == Brightness.light ? const Color(0xFFF5F5DC) : const Color(0xFF1B1212);

  Color get projectCardBgColor =>
      brightness == Brightness.light ? const Color(0xFFF5F5DC) :const Color(0xFF1B1212);

  Color get settingsScreenBgColor =>
      brightness == Brightness.light ? const Color(0xFFF5F5DC) : Colors.black;
  Color get bottomSheetScreenBgColor =>
      brightness == Brightness.light  ? Colors.white : Colors.black;
  Color get profileAppbarColor =>
      brightness == Brightness.light  ? Colors.white : Colors.black;

  Color get appbarBackArrowColor =>
      brightness == Brightness.light  ? Colors.black : Colors.white;

  Color get customSnackBarBgColor =>
      brightness == Brightness.light  ? Colors.black.withOpacity(0.7) : Colors.grey.withOpacity(0.8);

  Color get bottomSheetColor =>
      brightness == Brightness.light  ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6);
}
