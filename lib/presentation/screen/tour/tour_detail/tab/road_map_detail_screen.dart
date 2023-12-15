import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/tour/usecase/group_tour_road_map_usecase.dart';
import 'package:food_quest/domain/entity/tour_road_map.dart';
import 'package:food_quest/presentation/component/icon_button.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/road_map_spot_sreach_scren.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RoadMapDetailScreen extends HookConsumerWidget {
  const RoadMapDetailScreen({
    required this.dayIndex,
    required this.tourId,
    super.key,
  });

  final int dayIndex;
  final int tourId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupedRoadMap = useState<List<TourRoadMapResponse>?>([]);
    final loading = useState(false);

    ref.watch(GroupTourRoadMapUsecaseProvider(tourId: tourId)).when(
        data: (data) {
      groupedRoadMap.value = data![(dayIndex + 1).toString()];
      loading.value = false;
    }, loading: () {
      loading.value = true;
    }, error: (error, stackTrace) {
      debugPrint(error.toString());
    });

    if (loading.value) {
      return const Scaffold(body: LoadingWidget());
    }

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const Gap(16),
              for (final roadMap in groupedRoadMap.value!)
                RoadMapTile(
                  roadMap: roadMap,
                ),
            ],
          ),
        ),
        Positioned(
          bottom: 42,
          left: 0,
          right: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomIconButton(
                  icon: Icons.add,
                  label: 'スポット',
                  onPressed: () {
                    RoadMapSpotSreachModal.show(
                      context: context,
                      tourId: tourId,
                      dayIndex: dayIndex,
                    );
                  },
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
              OutlinedIconButton(
                icon: Icons.add,
                label: 'メモ・移動',
                onPressed: () {},
                height: 48,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RoadMapTile extends StatelessWidget {
  const RoadMapTile({
    required this.roadMap,
    super.key,
  });

  final TourRoadMapResponse roadMap;

  @override
  Widget build(BuildContext context) {
    final imagePath = roadMap.imagePath ?? '';
    final dotEnv = dotenv.get('VAR_GOOGLEKEY');

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Text(
                roadMap.day.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Gap(16),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: CachedNetworkImage(
                                height: 100,
                                width: 120,
                                imageUrl:
                                    "https://maps.googleapis.com/maps/api/place/photo?maxwidth=120&photoreference=$imagePath&key=$dotEnv",
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) => Center(
                                  child: CircularProgressIndicator(
                                    value: downloadProgress.progress,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                // Do something
                              },
                              child: Icon(Icons.comment),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const Gap(8),
        SizedBox(
          height: 30,
          child: VerticalDivider(
            width: 3,
            color: Colors.grey[700],
          ),
        ),
        const Gap(8),
      ],
    );
  }
}
