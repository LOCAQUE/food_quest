import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/task_list_screen/task_screen.dart';

@RoutePage()
class QuestHomeAutoRouterScreen extends AutoRouter {
  const QuestHomeAutoRouterScreen({super.key});
}

@RoutePage()
class QuestHomeScreen extends HookConsumerWidget {
  const QuestHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TopBarWIdget(),
            Ink(
              color: Colors.white,
              child: const TabBar(
                indicatorColor: AppColor.primaryColor,
                tabs: [
                  Tab(text: '大阪'),
                  Tab(text: '東京'),
                ],
              ),
            ),
            const Expanded(
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

class TopBarWIdget extends StatelessWidget {
  const TopBarWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(
        left: 24,
        right: 16,
        bottom: 12,
      ),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Quest',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // 通知アイコンがタップされた時の処理
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.task,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // 通知アイコンがタップされた時の処理
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // 地域選択アイコンがタップされた時の処理
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
