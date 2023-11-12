import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/quest_appbar.dart';
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
//TODO: 都道府県でソートしたクエスト一覧をグループ分けし、QuestScreenをmapでソートした数だけ作成する

// final prefectures = ['大阪府','東京都','神奈川県'];

// // 都道府県別に質問をマップで保持する
// final questionsByPrefecture = <String, List<Question>>{};

// // 都道府県名をIN句に展開
// final prefectureNames = prefectures.map((name) => "'$name'").join(',');

// // クエリを実行
// final res = await supabase
//   .from('questions')
//   .select()
//   .in('prefecture', [prefectureNames])
//   .execute();

// // 結果を都道府県別にグループ化
// for (final question in res.data ?? []) {
//   final prefecture = question['prefecture'];
//   questionsByPrefecture.putIfAbsent(prefecture, () => []).add(question);
// }

// print(questionsByPrefecture);
