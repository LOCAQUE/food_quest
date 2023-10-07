import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required int id,
    required DateTime createdAt,
    required String task,
    required int targetNumber,
  }) = _Task;
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
abstract class UserTask with _$UserTask {
  const factory UserTask({
    required int id,
    required DateTime createdAt,
    required int taskId,
    required int achievedNumber,
    required int userId,
  }) = _UserTask;
  factory UserTask.fromJson(Map<String, dynamic> json) =>
      _$UserTaskFromJson(json);
}

@freezed
abstract class TaskResponse with _$TaskResponse {
  const factory TaskResponse({required Task tasks}) = _TaskResponse;

  const TaskResponse._();

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
}
