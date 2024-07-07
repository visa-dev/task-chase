import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/colors.dart';



class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: KColors.primary,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          // side:  const BorderSide(color:Colors.black),
          padding: const EdgeInsets.symmetric(vertical: 8),
          textStyle: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              
   ));

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.orange,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          // side:  const BorderSide(color:Colors.black),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              
   ));

}
