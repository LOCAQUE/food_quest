import 'package:flutter/material.dart';
import 'package:food_quest/presentation/screen/profile_screen/my_quest_list_screen/my_quest_list_screen_notifier.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_detail_screen/quest_detail_screen.dart';

class MyQuestListScreen extends HookConsumerWidget {
  const MyQuestListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      myQuestListScreenNotifierProvider.select((state) => state.isLoading),
    );

    final myQuestionList = ref.watch(
          questionTaskNotifierProvider.select((state) => state.myQuestionList),
        ) ??
        [];

    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (myQuestionList.isEmpty) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: myQuestionList.length,
        itemBuilder: (context, index) {
          final question = myQuestionList[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: QuestionTile(
              question: question,
              onTap: () {
                QuestDetailScreen(question: question).show(context);
              },
            ),
          );
        },
        // itemExtent: 100,
      ),
    );
  }
}
