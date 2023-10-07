import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/profile_screen/asked_list_screen/asked_list_screen_notifier.dart';

class AskedListScreen extends HookConsumerWidget {
  const AskedListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      askedListScreenNotifierProvider.select((state) => state.isLoading),
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
      body: QuestionTiles(
        questionList: myQuestionList,
      ),
    );
  }
}
