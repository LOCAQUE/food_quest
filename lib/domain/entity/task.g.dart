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
      created_at: DateTime.parse(json['created_at'] as String),
      task_id: json['task_id'] as int,
      achieved_number: json['achieved_number'] as int,
      user_id: json['user_id'] as int,
    );

Map<String, dynamic> _$$UserTaskImplToJson(_$UserTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.created_at.toIso8601String(),
      'task_id': instance.task_id,
      'achieved_number': instance.achieved_number,
      'user_id': instance.user_id,
    };

_$TaskResponseImpl _$$TaskResponseImplFromJson(Map<String, dynamic> json) =>
    _$TaskResponseImpl(
      tasks: Task.fromJson(json['tasks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskResponseImplToJson(_$TaskResponseImpl instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };
