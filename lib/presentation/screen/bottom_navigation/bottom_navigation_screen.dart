import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class BottomNavigationRouterScreen extends AutoRouter {
  const BottomNavigationRouterScreen({super.key});
}

@RoutePage()
class BottomNavigationScreen extends HookConsumerWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //真ん中を除くページのリスト
    final pageList = [
      const RecommendedSpotsRoute(),
      const ProfileRoute(),
      const QuestHomeRoute(),
      const PetRoute(),
      const SettingRoute(),
    ];

    return AutoTabsScaffold(
      routes: pageList,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.1),
          ),
          child: SalomonBottomBar(
            backgroundColor: Colors.white,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text('ツアー'),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.help),
                title: const Text('people'),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.abc),
                title: const Text('Home'),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.pets),
                title: const Text('Search'),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.settings),
                title: const Text('Profile'),
                selectedColor: Colors.orange,
              ),
            ],
          ),
        );
      },
    );
  }
}
