import 'package:booklyapp/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      this.backgroundColor = AppColors.kMainTextColorDarkTheme,
      this.textColor = Colors.black,
      required this.borderRadius});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        onPressed: () {},
        child: Text(
          'data',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: textColor),
        ),
      ),
    );
  }
}
