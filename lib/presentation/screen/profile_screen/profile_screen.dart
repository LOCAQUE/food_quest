import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/profile_screen/answered_list_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/asked_list_screen/asked_list_screen.dart';

@RoutePage()
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

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
                Tab(text: '自分の質問'),
                Tab(text: '回答した質問'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AskedListScreen(),
                  AnsweredListScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
