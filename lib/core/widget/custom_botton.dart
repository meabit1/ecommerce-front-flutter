import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
