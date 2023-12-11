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
      const PetRoute(),
      const QuestHomeRoute(),
      const ProfileRoute(),
    ];

    return AutoTabsScaffold(
      routes: pageList,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          height: 107, // ここで高さを設定
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.1),
          ),
          child: SalomonBottomBar(
            backgroundColor: Colors.white,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.pets_outlined,
                  size: 28, // アイコンのサイズを変更
                ),
                title: const Text(
                  'キャラクター',
                  style: TextStyle(fontSize: 10), // テキストのサイズ
                ),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.checklist_outlined),
                activeIcon: const Icon(Icons.checklist),
                title: const Text(
                  'クエスト',
                  style: TextStyle(fontSize: 10), // テキストのサイズ
                ),
                selectedColor: Colors.orange,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_outline),
                activeIcon: const Icon(Icons.person),
                title: const Text(
                  'プロフィール',
                  style: TextStyle(fontSize: 10), // テキストのサイズ
                ),
                selectedColor: Colors.orange,
              ),
            ],
          ),
        );
      },
    );
  }
}
