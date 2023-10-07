// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      task: json['task'] as String,
      targetNumber: json['targetNumber'] as int,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'task': instance.task,
      'targetNumber': instance.targetNumber,
    };

_$UserTaskImpl _$$UserTaskImplFromJson(Map<String, dynamic> json) =>
    _$UserTaskImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      taskId: json['taskId'] as int,
      achievedNumber: json['achievedNumber'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$UserTaskImplToJson(_$UserTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'taskId': instance.taskId,
      'achievedNumber': instance.achievedNumber,
      'userId': instance.userId,
    };

_$TaskResponseImpl _$$TaskResponseImplFromJson(Map<String, dynamic> json) =>
    _$TaskResponseImpl(
      tasks: Task.fromJson(json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskResponseImplToJson(_$TaskResponseImpl instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
