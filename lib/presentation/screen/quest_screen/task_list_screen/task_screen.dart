import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/entity/task.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/presentation/screen/quest_screen/component/task_component.dart';
import 'package:food_quest/presentation/screen/quest_screen/task_list_screen/task_screen_notifier.dart';

@RoutePage()
class TaskScreen extends HookConsumerWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList =
        useState<List<Task>?>([]);
    
    final taskListProvider = ref.watch(taskScreenNotifierProvider);

    taskListProvider.when(
      data: (data) => taskList.value = data?.cast<Task>(),
      loading: () => const LoadingWidget(),
      error: (error, stackTrace) => Exception(error),
    );

    return Scaffold(
      body: ListView.builder(
        itemCount: taskList.value?.length,
        itemBuilder: (context, index) {
        final taskId = taskList.value?[index].id;
        final tasks = taskList.value?[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TaskComponent(
                    tasks: tasks,
                    taskResponse: taskId,
                  ),
          );
        },
      ),
    );
  }
}
