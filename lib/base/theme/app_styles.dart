import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  static const appBarTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 14,
    color: AppColors.darkGray,
  );

  static const TextStyle priceStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle subTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.gray,
  );

  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(vertical: 16),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );

  static const TextTheme textTheme = TextTheme(
    titleLarge: titleStyle, // AppBar title
    bodyMedium: bodyStyle, // Normal body text
    bodySmall: subTextStyle, // Subtext
  );
}
