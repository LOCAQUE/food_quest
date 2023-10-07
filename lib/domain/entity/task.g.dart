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

_$TaskResponseImpl _$$TaskResponseImplFromJson(Map<String, dynamic> json) =>
    _$TaskResponseImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      task: json['task'] as String,
      targetNumber: json['targetNumber'] as int,
    );

Map<String, dynamic> _$$TaskResponseImplToJson(_$TaskResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'task': instance.task,
      'targetNumber': instance.targetNumber,
    };
