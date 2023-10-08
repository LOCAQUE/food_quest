import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/home_screen/quest_screen/quest_screen.dart';
import 'package:food_quest/presentation/screen/home_screen/task_screen/task_screen.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Gap(50),
            TabBar(
              padding: EdgeInsets.symmetric(horizontal: 50),
              indicatorColor: AppColor.primaryColor,
              tabs: [
                Tab(text: 'Quest'),
                Tab(text: 'Task'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  QuestScreen(),
                  TaskScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
