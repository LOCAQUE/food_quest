import 'dart:async';

import 'package:food_quest/domain/entity/task.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'task_screen_notifier.g.dart';

@riverpod
class TaskScreenNotifier extends _$TaskScreenNotifier {
  @override
  Future<List<Task>?> build() {
    final repository = ref.read(apiRepositoryProvider);
    return repository.getTaskList();
  }
}







