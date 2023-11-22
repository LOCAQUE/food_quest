import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class SwiperImage extends StatelessWidget {
  const SwiperImage({
    required this.imageUrl,
    super.key,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ExtendedImage.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
