import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigator_scope/navigator_scope.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/comming_soon_screen.dart';
import 'package:food_quest/presentation/screen/home_screen/home_screen.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/profile_screen.dart';
import 'package:food_quest/presentation/screen/setting_screen/setting_screen.dart';

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
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: 'プロフィール',), 
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey,), label: 'comming',),
            BottomNavigationBarItem(icon: Icon(Icons.abc, color: Colors.grey,), label: 'ペット',),
            BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.grey,), label: '設定',),
          ],      
        );      
      },      
    );      
  }
}
