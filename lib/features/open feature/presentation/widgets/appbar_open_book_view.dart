import 'package:booklyapp/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

class AppBarOpenBooKView extends StatelessWidget {
  const AppBarOpenBooKView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(AppIcons.kCanselIcon),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(AppIcons.kShopIcon),
        ),
      ],
    );
  }
}
