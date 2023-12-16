import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TodoTourListAutoRouterScreen extends AutoRouter {
  const TodoTourListAutoRouterScreen({super.key});
}

@RoutePage()
class TodoTourListScreen extends HookConsumerWidget {
  const TodoTourListScreen({required this.notReleasedTours, super.key});

  final List<TourResponse> notReleasedTours;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.popRoute();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text('未公開ツアー一覧'),
      ),
      body: ListView.builder(
        itemCount: notReleasedTours.length,
        itemBuilder: (context, index) {
          final tourId = notReleasedTours[index].id;
          final imagePath = notReleasedTours[index].imagePath;

          return Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.2,
                ),
              ),
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              tileColor: Colors.white,
              title: Text(
                notReleasedTours[index].title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              subtitle: Text(
                '行程表を追加してツアーを公開してください',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: imagePath != 'null'
                  ? HasImagePath(imagePath: imagePath)
                  : const DefaultImage(),
              onTap: () {
                context.pushRoute(
                  TourDetailHomeRoute(tourId: tourId),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DefaultImage extends StatelessWidget {
  const DefaultImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          10,
        ),
        child: Image.asset(
          'assets/images/default_tours.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class HasImagePath extends StatelessWidget {
  const HasImagePath({
    required this.imagePath,
    super.key,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
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
      ),
    );
  }
}
