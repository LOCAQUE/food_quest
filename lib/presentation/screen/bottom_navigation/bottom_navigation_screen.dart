import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:food_quest/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class BottomNavigationRouterScreen extends AutoRouter {
  const BottomNavigationRouterScreen({super.key});
}

@RoutePage()
class BottomNavigationScreen extends HookConsumerWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //ボトムバーに並べるアイコンのリスト
    final iconList = <IconData>[
      Icons.person,
      Icons.help,
      Icons.pets,
      Icons.settings,
    ];

    //真ん中を除くページのリスト
    final pageList = [
      const ProfileRoute(),
      const ComingSoonRoute(),
      const PetRoute(),
      const SettingRoute(),
    ];

    return AutoTabsScaffold(
      routes: pageList,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'プロフィール',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'comming',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                color: Colors.grey,
              ),
              label: 'ペット',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              label: '設定',
            ),
          ],
        );
      },
    );
  }
}
