import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourDetailScreen extends HookConsumerWidget {
  const TourDetailScreen({required this.detailTour, super.key});

  final TourResponse detailTour;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (detailTour.imagePath != 'null')
              _HasImageWidget(imagePath: detailTour.imagePath),
            if (detailTour.imagePath == 'null') const _DefaultImageWidget(),
            const Gap(8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                detailTour.title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ));
  }
}

class _HasImageWidget extends StatelessWidget {
  const _HasImageWidget({
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: CachedNetworkImage(
        imageUrl: imagePath,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
          ),
        ),
      ),
    );
  }
}

class _DefaultImageWidget extends StatelessWidget {
  const _DefaultImageWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image.asset(
        'assets/images/default_tours.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
