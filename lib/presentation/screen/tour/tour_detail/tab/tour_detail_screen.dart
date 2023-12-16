import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/tour/usecase/group_tour_road_map_usecase.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:food_quest/domain/entity/tour_road_map.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/road_map_detail_screen.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourDetailScreen extends HookConsumerWidget {
  const TourDetailScreen({required this.detailTour, super.key});

  final TourResponse detailTour;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roadMaps = useState<Map<String, List<TourRoadMapResponse>>?>(null);
    ref.watch(GroupTourRoadMapUsecaseProvider(tourId: detailTour.id)).when(
      data: (data) {
        roadMaps.value = data;
      },
      loading: () {
        print('loading');
      },
      error: (error, stackTrace) {
        print(error);
      },
    );

    return DefaultTabController(
      length: roadMaps.value != null ? roadMaps.value!.length : 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (detailTour.imagePath != 'null')
                  _HasImageWidget(imagePath: detailTour.imagePath),
                if (detailTour.imagePath == 'null') const _DefaultImageWidget(),
                const Gap(8),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text(
                    detailTour.title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage('assets/images/monster_a_1.png'),
                      ),
                      const Gap(10),
                      Text(
                        detailTour.users!.name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'ツアーの説明',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    detailTour.contents,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Gap(8),

                // 行程表
                if (roadMaps.value != null && roadMaps.value!.isNotEmpty)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          'スケジュール',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      _TabBarWidget(
                        dayCount: roadMaps.value!.length,
                      ),
                      const Gap(8),
                      SizedBox(
                        height: 600,
                        child: TabBarView(
                          children: [
                            ...List.generate(
                              roadMaps.value!.length,
                              (index) => RoadMapDetailScreen(
                                dayIndex: index,
                                tourId: detailTour.id,
                                myTour: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
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

class _TabBarWidget extends HookConsumerWidget {
  const _TabBarWidget({
    required this.dayCount,
  });

  final int dayCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TabBar(
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(40), // Creates border
            color: AppColor.primaryColor,
          ),
          isScrollable: true,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          tabs: [
            ...List.generate(
              dayCount,
              (index) => Tab(
                height: 65,
                child: Center(
                  child: Text('Day${index + 1}'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
