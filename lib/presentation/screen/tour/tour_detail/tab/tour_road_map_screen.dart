import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/gen/colors.gen.dart';
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

    return DefaultTabController(
      length: dayCount.value + 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Gap(16),
            _TabBarWidget(dayCount: dayCount),
            Expanded(
              child: TabBarView(
                children: [
                  ...List.generate(
                    dayCount.value + 1,
                    (index) =>
                        RoadMapDetailScreen(dayIndex: index, tourId: tourId),
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

class _TabBarWidget extends StatelessWidget {
  const _TabBarWidget({required this.dayCount});

  final ValueNotifier<int> dayCount;

  @override
  Widget build(BuildContext context) {
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
                          dayCount.value--;
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
                dayCount.value++;
              },
            ),
          ],
        ),
      ),
    );
  }
}
