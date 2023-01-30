import 'package:booklyapp/core/utils/app_colors.dart';
import 'package:booklyapp/core/utils/text_style.dart';
import 'package:flutter/material.dart';

ThemeData darkThemeData() => ThemeData(
      scaffoldBackgroundColor: AppColors.kMineColor,
      iconTheme: const IconThemeData(
        color: AppColors.kMainTextColorDarkTheme,
      ),
      textTheme: const TextTheme(
        displayLarge: Styles.textStyle30,
        bodyLarge: Styles.textStyle20,
        bodyMedium: Styles.textStyle18,
        bodySmall: Styles.textStyle14,
      ),
    );
