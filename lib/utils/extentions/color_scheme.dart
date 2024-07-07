import 'package:flutter/material.dart';

extension CustomColorScheme on ColorScheme {
  Color get bg => brightness == Brightness.light ? Colors.white : Colors.black;
  Color get bgInv => brightness == Brightness.light ? Colors.black : Colors.white;
  Color get textFieldBorder => brightness == Brightness.light ? Colors.grey : Colors.white;
}