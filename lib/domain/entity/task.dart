import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

// supabaseのファンクションが小文字になってしまったので、スネークケースを使用している
// ignore_for_file: non_constant_identifier_names
@freezed
abstract class UserTask with _$UserTask {
  const factory UserTask({
    required int id,
    required DateTime created_at,
    required int task_id,
    required bool is_done,
    required String user_id,
  }) = _UserTask;
  factory UserTask.fromJson(Map<String, dynamic> json) =>
      _$UserTaskFromJson(json);
}

@freezed
abstract class TaskResponse with _$TaskResponse {
  const factory TaskResponse({
    required int id,
    required DateTime created_at,
    required int task_id,
    required bool is_done,
    required String user_id,
    Task? tasks,
  }) = _TaskResponse;

  const TaskResponse._();

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
}
