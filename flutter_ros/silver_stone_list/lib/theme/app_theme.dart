import 'package:flutter/material.dart';
import 'colors.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: const TextTheme(
        displayLarge: AppTextStyles.heading,
        bodyLarge: AppTextStyles.bodyText,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
        displayLarge: AppTextStyles.heading.copyWith(color: Colors.white),
        bodyLarge: AppTextStyles.bodyText.copyWith(color: Colors.white70),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
