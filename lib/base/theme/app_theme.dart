import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: const AppBarTheme(
        color: AppColors.primary,
        centerTitle: true,
        titleTextStyle: AppStyles.appBarTitleStyle,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.darkGray,
        unselectedItemColor: AppColors.gray,
      ),
      textTheme: AppStyles.textTheme,
    );
  }
}
