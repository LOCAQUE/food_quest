import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/presentation/screen/home_screen/component/task_component.dart';

class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList = ref.watch(
          questionTaskNotifierProvider.select((state) => state.taskList),
        ) ??
        [];
    print('taskList: $taskList');

    if (taskList.isEmpty) {
      return const SizedBox.shrink();
    }
    return Scaffold(
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          final task = taskList[index];
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TaskComponent(
              text: '質問を作成する',
              achievement: 4,
              target: 5,
            ),
          );
        },
      ),
    );
  }
}
