import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/gen/colors.gen.dart';
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
              const SliverAppBar(
                title: Text('ツアー'),
                backgroundColor: AppColor.backgroundColor,
              ),
            ];
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TourHeader(
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
                            Text('ツアー名'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Gap(16),
              TourHeader(
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
                            Text('ツアー名'),
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

class TourHeader extends StatelessWidget {
  const TourHeader({
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
