import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/tour/usecase/group_tour_usecase.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourHomeAutoRouterScreen extends AutoRouter {
  const TourHomeAutoRouterScreen({super.key});
}

@RoutePage()
class TourHomeScreen extends HookConsumerWidget {
  const TourHomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(false);
    final releasedTours = useState<List<TourResponse>?>([]);
    final notReleasedTours = useState<List<TourResponse>?>([]);

    ref.watch(groupTourUsecaseProvider).when(
      data: (data) {
        releasedTours.value = data!['release'];
        notReleasedTours.value = data['notRelease'];
        loading.value = false;
      },
      loading: () {
        loading.value = true;
      },
      error: (error, stackTrace) {
        debugPrint(error.toString());
      },
    );

    if (loading.value) {
      return const Scaffold(body: LoadingWidget());
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushRoute(const MakeTourRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              TourTopHeader(notReleasedTours: notReleasedTours.value!),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TourCategoryHeader(
                title: '全国',
                onTap: () {},
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/test.png',
                              width: 200,
                              height: 100,
                            ),
                            const Text('ツアー名'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Gap(16),
              TourCategoryHeader(
                title: '人気',
                onTap: () {},
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/test.png',
                              width: 200,
                              height: 100,
                            ),
                            const Text('ツアー名'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

//AppBar
class TourTopHeader extends StatelessWidget {
  const TourTopHeader({
    required this.notReleasedTours,
    super.key,
  });

  final List<TourResponse> notReleasedTours;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('ツアー'),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: InkWell(
            onTap: () {
              
            },
            child: Badge(
              isLabelVisible: notReleasedTours.isNotEmpty ? true : false,
              label: Text(notReleasedTours.length.toString()),
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              child: const Icon(
                Icons.task_alt,
                color: Colors.black,
                size: 28,
              ),
            ),
          ),
        ),
      ],
      backgroundColor: AppColor.backgroundColor,
    );
  }
}

//ツアーのカテゴリーのヘッダー
class TourCategoryHeader extends StatelessWidget {
  const TourCategoryHeader({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              'もっと見る',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
