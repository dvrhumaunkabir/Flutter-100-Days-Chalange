import 'package:flutter/cupertino.dart';
import 'package:flutter_100_days_chalange/Styles/colors.dart';

class AppTextStyle {
  static const heading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const subtitle = TextStyle(
      fontSize: 16,
      color: AppColors.textLight
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xFFFFFFFF),
  );
}
