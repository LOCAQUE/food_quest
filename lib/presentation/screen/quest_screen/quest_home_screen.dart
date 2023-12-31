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
    final loading = useState<bool>(true);

    final prefecturesState = useState<List<String>>([]);

    final prefectures = ref.watch(selectPrefectureNotifierProvider);

    final questList = ref.watch(groupePrefectureUsecaseProvider);

    questList.when(
      data: (data) {
        questListState.value = data;
        loading.value = false;
      },
      loading: () {
        loading.value = true;
      },
      error: (error, stackTrace) {},
    );

    prefectures.when(
      data: (data) {
        prefecturesState.value = data;
        loading.value = false;
      },
      loading: () {
        loading.value = true;
      },
      error: (error, stackTrace) {},
    );

    if (loading.value) {
      return const Scaffold(body: LoadingWidget());
    }

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
