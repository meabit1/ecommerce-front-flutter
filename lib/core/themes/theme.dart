import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/constant/strings.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static final mainTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          color: AppColors.grey,
          width: 2,
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(
        color: AppColors.black,
      ),
    ),
    hintColor: AppColors.grey,
    fontFamily: AppFontsAssets.mainFont,
    primaryColor: AppColors.primaryColor,
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(
          AppColors.primaryColor,
        ),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
      bodyLarge: TextStyle(
        color: AppColors.darkGrey,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
      ),
    ),
  );
}
