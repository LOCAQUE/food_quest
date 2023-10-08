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
    final emptyMessage = ref.watch(
      questionTaskNotifierProvider.select((state) => state.emptyMessage),
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
          final task = taskList[index].tasks;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: emptyMessage != null
                ? Text(emptyMessage)
                : TaskComponent(
                    text: task.task,
                    achievement: 4,
                    target: task.targetNumber,
                  ),
          );
        },
      ),
    );
  }
}
