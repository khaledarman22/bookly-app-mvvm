import 'package:booklyapp/features/home_featuer/presentation/widgets/custem_image_item.dart';
import 'package:flutter/material.dart';

class CustemListView extends StatelessWidget {
  const CustemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 95, child: CustemImageItem());
        },
      ),
    );
  }
}
