import 'package:flutter/material.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:navigator_scope/navigator_scope.dart';

import 'package:food_quest/presentation/screen/blue_screen/blue_screen.dart';
import 'package:food_quest/presentation/screen/green_screen/green_screen.dart';
import 'package:food_quest/presentation/screen/home_screen/home_screen.dart';
import 'package:food_quest/presentation/screen/orange_screen/orange_screen.dart';

class BottomNavigationScreen extends HookConsumerWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavIndex = useState<int>(0);

    //ボトムバーに並べるアイコンのリスト
    final iconList = <IconData>[
      Icons.brightness_4,
      Icons.brightness_5,
      Icons.brightness_6,
      Icons.brightness_7,
    ];

    //真ん中を除くページのリスト
    final pageList = [
      const HomeScreen(),
      const BlueScreen(),
      const OrangeScreen(),
      const GreenScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: NavigatorScope(
        // A hub of local navigators
        currentDestination: bottomNavIndex.value,
        destinationCount: iconList.length,
        destinationBuilder: (context, index) {
          return NestedNavigator(
            builder: (context) => pageList[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.brightness_3,
          color: Colors.orangeAccent,
        ),
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 0.2,
            ),
          ],
        ),
        child: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          backgroundColor: Colors.white,
          activeIndex: bottomNavIndex.value,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          splashColor: Colors.orangeAccent,
          splashSpeedInMilliseconds: 300,
          onTap: (index) {
            //選択したindexをstateに反映
            bottomNavIndex.value = index;
          },
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? Colors.orange : Colors.grey;
            return Icon(
              iconList[index],
              size: 32,
              color: color,
            );
          },
        ),
      ),
    );
  }
}
