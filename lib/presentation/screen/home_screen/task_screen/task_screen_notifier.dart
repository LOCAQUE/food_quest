import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';

part 'task_screen_notifier.freezed.dart';

@freezed
class TaskScreenState with _$TaskScreenState {
  factory TaskScreenState({
    @Default(false) bool isLoading,
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

  void _init() {
    state = state.copyWith(isLoading: true);
    ref.watch(questionTaskNotifierProvider.notifier).getTask();
    state = state.copyWith(isLoading: false);
  }
}
