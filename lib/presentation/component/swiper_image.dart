import 'package:auto_route/auto_route.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/routes/app_router.dart';

class SwiperImage extends StatelessWidget {
  const SwiperImage({
    required this.imageUrl,
    required this.tag,
    super.key,
  });

  final String imageUrl;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          context.pushRoute(
            QuestImageDetailRoute(
              tag: tag,
              imageUrl: imageUrl,
            ),
          );
        },
        child: Card(
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
        ),
      ),
    );
  }
}
