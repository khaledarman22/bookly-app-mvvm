import 'package:booklyapp/core/utils/app_icons.dart';
import 'package:booklyapp/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBareHomePage extends StatelessWidget {
  const AppBareHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          child: SvgPicture.asset(AppImages.kmainImage),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(AppIcons.kSearchIcon),
        )
      ],
    );
  }
}
