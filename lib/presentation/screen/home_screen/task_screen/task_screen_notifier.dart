import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';

part 'task_screen_notifier.freezed.dart';

@freezed
class TaskScreenState with _$TaskScreenState {
  factory TaskScreenState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _TaskScreenState;
}

final taskScreenNotifierProvider =
    StateNotifierProvider<TaskScreenNotifier, TaskScreenState>((ref) {
  return TaskScreenNotifier(ref);
});

class TaskScreenNotifier extends StateNotifier<TaskScreenState> {
  TaskScreenNotifier(this.ref) : super(TaskScreenState()) {
    Future.microtask(_init);
  }

  final Ref ref;

  void _init() async {
    await initFunction();
  }

  Future<void> initFunction() async {
    try {
      state = state.copyWith(isLoading: true);
      final taskList =
          await ref.watch(questionTaskNotifierProvider.notifier).getTaskList();
      final isTaskListEmpty = taskList?.isEmpty ?? true;
      final isTaskEmpty = taskList?.first.tasks ?? true;

      if (isTaskListEmpty && isTaskEmpty != false) {
        state = state.copyWith(errorMessage: 'タスクが取得できませんでした');
      }

      await ref.watch(questionTaskNotifierProvider.notifier).getAchievements();

      state = state.copyWith(isLoading: false);
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(errorMessage: 'タスクが取得できませんでした');
    }
  }

}
