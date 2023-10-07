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
abstract class TaskResponse with _$TaskResponse {
  const factory TaskResponse({
    required int id,
    required DateTime createdAt,
    required String task,
    required int targetNumber,
  }) = _TaskResponse;

  const TaskResponse._();

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  // DateTimeから"yyyy-MM-dd"形式の文字列に変換
  String get formattedCreatedAt => DateFormat('yyyy-MM-dd').format(createdAt);
}
