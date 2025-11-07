import 'package:flutter/material.dart';
import 'package:flutter_100_days_chalange/Styles/colors.dart';
import 'package:flutter_100_days_chalange/Styles/textStyles.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final  Color? color;
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
       backgroundColor: color ?? AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),),
        padding:  EdgeInsets.symmetric(vertical: 12,horizontal: 20),
      ),
      onPressed: onPressed,
      child: Text(label,style: AppTextStyle.buttonText,),
    );
  }
}
