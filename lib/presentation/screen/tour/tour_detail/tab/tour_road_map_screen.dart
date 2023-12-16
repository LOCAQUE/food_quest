import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/tour/usecase/group_tour_road_map_usecase.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/%20ui_provier/tour_day_tab_count.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/road_map_detail_screen.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourRoadMapScreen extends HookConsumerWidget {
  const TourRoadMapScreen({required this.tourId, super.key});

  final int tourId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dayCount = useState(1);

    ref.watch(GroupTourRoadMapUsecaseProvider(tourId: tourId)).when(
          data: (data) {
            dayCount.value =
                ref.watch(TourDayTabCountProvider(tabCount: data!.length));
          },
          loading: () {},
          error: (error, stackTrace) {
            debugPrint(error.toString());
          },
        );

    return DefaultTabController(
      length: dayCount.value + 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Gap(16),
            _TabBarWidget(
              dayCount: dayCount,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ...List.generate(
                    dayCount.value + 1,
                    (index) => RoadMapDetailScreen(
                      dayIndex: index,
                      tourId: tourId,
                      myTour: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TabBarWidget extends HookConsumerWidget {
  const _TabBarWidget({
    required this.dayCount,
  });

  final ValueNotifier<int> dayCount;

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
              dayCount.value,
              (index) => Tab(
                height: 65,
                child: Stack(
                  children: [
                    Center(
                      child: Text('Day${index + 1}'),
                    ),
                    Positioned(
                      right: -4,
                      top: -1,
                      child: InkWell(
                        onTap: () {
                          ref
                              .read(TourDayTabCountProvider(
                                      tabCount: dayCount.value)
                                  .notifier)
                              .removeDate();
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                ref
                    .read(TourDayTabCountProvider(tabCount: dayCount.value)
                        .notifier)
                    .addDate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
