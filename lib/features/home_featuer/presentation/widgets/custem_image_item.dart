import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustemImageItem extends StatelessWidget {
  const CustemImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        imageUrl:
            'https://www.woolha.com/media/2019/07/flutter-create-custom-icon-1200x627.jpg',
      ),
    );
  }
}
