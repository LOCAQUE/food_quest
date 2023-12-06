// comming sooonの画面

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/profile_screen/my_quest_list_screen/my_quest_list_screen.dart';

@RoutePage()
class ProfileAutoRouterScreen extends AutoRouter {
  const ProfileAutoRouterScreen({super.key});
}

@RoutePage()
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBarWidget(),
              // AppBarとTabBarの間のコンテンツ
              const HeaderContents(),
              const HeaderTag(),
            ];
          },
          body: TabBarView(
            children: [
              const MyQuestListScreen(),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      index.toString(),
                      style: const TextStyle(
                        fontSize: 100,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderTag extends StatelessWidget {
  const HeaderTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverPersistentHeader(
      pinned: true,
      delegate: _StickyTabBarDelegate(
        TabBar(
          indicatorColor: AppColor.primaryColor,
          tabs: [
            Tab(
              text: '自分の回答',
            ),
            Tab(
              text: 'レビュー',
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderContents extends StatelessWidget {
  const HeaderContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          ColoredBox(
            color: const Color.fromARGB(255, 248, 248, 248),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: 42,
                        backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1354479643882004483/Btnfm47p_400x400.jpg',
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          // ボタンがクリックされたときの処理
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: const BorderSide(
                            color: AppColor.primaryColor,
                          ),
                        ),
                        child: const Text(
                          '編集',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                          ), // ボタンのテキストの色を設定
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'パサらん',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        'Lv.20',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      '初めまして。ベスアンサーでお金稼ぎたいです。',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ),
                const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '2',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          'ツアー',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '2',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          'ツアー',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '2',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          'ツアー',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '2',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          'ツアー',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      foregroundColor: AppColor.textColor,
      // AppBarの高さを指定
      expandedHeight: 100,
      // スクロール時にAppBarのロゴを表示するかどうか
      pinned: true,
      // AppBarにロゴを表示
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/header2.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      actions: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 248, 248, 248),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 32,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class _StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  const _StickyTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: const Color.fromARGB(255, 248, 248, 248),
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_StickyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
