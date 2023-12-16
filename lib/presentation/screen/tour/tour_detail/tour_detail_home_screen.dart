import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/tour/notifier/tour_notifier.dart';
import 'package:food_quest/domain/application/tour/usecase/tour_detail_usecase.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/tour_detail_screen.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/tour_road_map_screen.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourDetailHomeScreen extends HookConsumerWidget {
  const TourDetailHomeScreen({required this.tourId, super.key});

  final int tourId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(false);
    final detailTour = useState<TourResponse?>(null);

    ref.watch(tourDetailUsecaseProvider(tourId: tourId)).when(
      data: (tour) {
        detailTour.value = tour;
        loading.value = false;
      },
      loading: () {
        loading.value = true;
      },
      error: (error, stackTrace) {
        debugPrint('error: $error');
      },
    );

    if (loading.value) {
      return const Scaffold(
        body: LoadingWidget(),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
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
          title: const Text('ツアー詳細'),
          actions: [
            TextButton(
              onPressed: () async {
                await ref
                    .read(tourNotifierProvider.notifier)
                    .updateIsReleaseTour(
                      tourId: tourId,
                    );
                await ref.refresh(tourNotifierProvider);
                context.pushRoute(const TourHomeRoute());
              },
              child: const Text('公開'),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: AppColor.primaryColor,
            tabs: <Widget>[
              Tab(
                text: 'ツアー詳細',
              ),
              Tab(
                text: '行程表',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TourDetailScreen(detailTour: detailTour.value!),
            TourRoadMapScreen(tourId: tourId),
          ],
        ),
      ),
    );
  }
}
