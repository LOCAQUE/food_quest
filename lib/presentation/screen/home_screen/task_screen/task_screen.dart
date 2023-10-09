import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/presentation/screen/home_screen/component/task_component.dart';
import 'package:food_quest/presentation/screen/home_screen/task_screen/task_screen_notifier.dart';

class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      taskScreenNotifierProvider.select((state) => state.isLoading),
    );
    final taskList = ref.watch(
          questionTaskNotifierProvider.select((state) => state.taskList),
        ) ??
        [];

    final questAchievement = ref.watch(
      questionTaskNotifierProvider.select((state) => state.questAchievement),
    );
    final answerAchievement = ref.watch(
      questionTaskNotifierProvider.select((state) => state.answerAchievement),
    );
    final bestAnswerAchievement = ref.watch(
      questionTaskNotifierProvider
          .select((state) => state.bestAnswerAchievement),
    );

    final errorMessage = ref.watch(
      taskScreenNotifierProvider.select((state) => state.errorMessage),
    );

    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          final taskUser = taskList[index];
          final tasks = taskList[index].tasks;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: errorMessage != ''
                ? Text(errorMessage)
                : TaskComponent(
                    tasks: tasks!,
                    taskUser: taskUser,
                  ),
          );
        },
      ),
    );
  }
}
