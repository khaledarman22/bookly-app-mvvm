import 'package:booklyapp/core/utils/AppSize.dart';
import 'package:booklyapp/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle textStyle30 = TextStyle(
    color: AppColors.kMainTextColorDarkTheme,
    fontSize: AppSize.kFontSize30,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyle20 = TextStyle(
    color: AppColors.kMainTextColorDarkTheme,
    fontSize: AppSize.kFontSize20,
  );
  static const TextStyle textStyle18 = TextStyle(
    color: AppColors.kMainTextColorDarkTheme,
    fontSize: AppSize.kFontSize18,
  );
  static const TextStyle textStyle16 = TextStyle(
    color: AppColors.kMainTextColorDarkTheme,
    fontSize: AppSize.kFontSize16,
  );
  static const TextStyle textStyle14 = TextStyle(
    color: AppColors.kGreyTextColorDarkTheme,
    fontSize: AppSize.kFontSize14,
  );
}
