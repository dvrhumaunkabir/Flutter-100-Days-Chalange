import 'package:flutter/material.dart';
import '../Styles/textStyles.dart';
import '../styles/colors.dart';


class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomInputField({
    super.key,
    required this.hintText,
    this.icon,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: AppTextStyle.subtitle.copyWith(color: AppColors.textDark),
        decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon, color: AppColors.primary) : null,
          hintText: hintText,
          hintStyle: AppTextStyle.subtitle,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
      ),
    );
  }
}