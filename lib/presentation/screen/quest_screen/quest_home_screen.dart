// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/quest_list/usecase/group_prefecture_usecase.dart';
import 'package:food_quest/domain/application/select_prefecture/notifier/select_prefecture_notifier.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/quest_appbar.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_screen.dart';

@RoutePage()
class QuestHomeAutoRouterScreen extends AutoRouter {
  const QuestHomeAutoRouterScreen({super.key});
}

@RoutePage()
class QuestHomeScreen extends HookConsumerWidget {
  const QuestHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questListByPrefecture =
        useState<Map<String, List<QuestionResponse>>>({});

    final selectedPrefecture = useState<List<String>>([]);

    final selectPrefectureProvider =
        ref.watch(selectPrefectureNotifierProvider);

    final questListByPrefectureProvider =
        ref.watch(groupePrefectureUsecaseProvider);

    questListByPrefectureProvider.when(
      data: (data) => questListByPrefecture.value = data,
      loading: () => const LoadingWidget(),
      error: (error, stackTrace) => Exception(error),
    );

    selectPrefectureProvider.when(
      data: (data) => selectedPrefecture.value = data,
      loading: () => const LoadingWidget(),
      error: (error, stackTrace) => Exception(error),
    );

    return Scaffold(
      body: DefaultTabController(
        length: selectedPrefecture.value.length,
        child: Column(
          children: [
            const TopBarWIdget(),
            Ink(
              color: Colors.white,
              child: TabBar(
                indicatorColor: AppColor.primaryColor,
                tabs: [
                  ...selectedPrefecture.value.map((prefecture) {
                    return Tab(
                      child: Text(
                        prefecture,
                        style: const TextStyle(color: AppColor.textColor),
                      ),
                    );
                  }),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ...selectedPrefecture.value.map((prefecture) {
                    return QuestScreen(
                      questions: questListByPrefecture.value[prefecture] ?? [],
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
