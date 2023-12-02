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
    final questListState = useState<Map<String, List<QuestionResponse>>>({});

    final prefecturesState = useState<List<String>>([]);

    final prefectures = ref.watch(selectPrefectureNotifierProvider);

    final questList = ref.watch(groupePrefectureUsecaseProvider);

    if (questList is AsyncError || prefectures is AsyncError) {
      final questListError = questList is AsyncError
          ? (questList as AsyncError).error.toString()
          : '';
      final prefecturesError = prefectures is AsyncError
          ? (prefectures as AsyncError).error.toString()
          : '';
      print('Error: $questListError $prefecturesError');
      return Text('Error: $questListError $prefecturesError');
    }

    if (questList is AsyncLoading || prefectures is AsyncLoading) {
      return const LoadingWidget();
    }

    questListState.value = questList.value!;
    prefecturesState.value = prefectures.value!;

    return Scaffold(
      body: DefaultTabController(
        length: prefecturesState.value.length,
        child: Column(
          children: [
            const TopBarWIdget(),
            Ink(
              color: Colors.white,
              child: TabBar(
                indicatorColor: AppColor.primaryColor,
                tabs: [
                  ...prefecturesState.value.map((prefecture) {
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
                  ...prefecturesState.value.map((prefecture) {
                    return QuestScreen(
                      questions: questListState.value[prefecture] ?? [],
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
