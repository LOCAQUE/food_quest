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

@freezed
abstract class TaskResponse with _$TaskResponse {
  const factory TaskResponse({
    required int id,
    required DateTime createdAt,
    required String task,
    required int targetNumber,
  }) = _TaskResponse;
  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
}
