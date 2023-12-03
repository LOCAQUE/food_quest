import 'dart:async';

import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_screen_notifier.freezed.dart';
part 'task_screen_notifier.g.dart';

@freezed
class TaskScreenResponse with _$TaskScreenResponse {
  const factory TaskScreenResponse({
    required String id,
    required int targetNumber,
    required int categoryNumber,
    required String task,
  }) = _TaskScreenResponse;

  factory TaskScreenResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskScreenResponseFromJson(json);
}

@riverpod
class TaskScreenNotifier extends _$TaskScreenNotifier {
  @override
  Future<List<TaskScreenResponse>?> build() {
    final repository = ref.read(apiRepositoryProvider);
    return repository.getTaskList();
  }
}







