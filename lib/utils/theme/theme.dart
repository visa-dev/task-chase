import 'package:flutter/material.dart';
import 'package:task_chase/utils/theme/custom_themes/appbar_theam.dart';
import 'package:task_chase/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:task_chase/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:task_chase/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:task_chase/utils/theme/custom_themes/text_field_theme.dart';
import 'package:task_chase/utils/theme/custom_themes/text_theme.dart';

class kAppTheme {
  kAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      brightness: Brightness.light,
      primaryColor: Colors.orange,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: TBottomSheetThemeData.lightBottomSheetTheme,
      checkboxTheme: TCheckboxTheme.lightcheckBoxThemeData,
      inputDecorationTheme: TInputFieldTheme.lightInputFieldTheme
      
      );
      
      
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetThemeData.darkBottomSheetTheme,
      checkboxTheme: TCheckboxTheme.darkcheckBoxThemeData,
      inputDecorationTheme: TInputFieldTheme.darkInputFieldTheme
      );
}
