import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Styles/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 10,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor:AppColors.textDark,
    primaryColor: AppColors.secondary,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.textDark,
      foregroundColor: Colors.white,
      elevation: 10,
    ),
  );




}
