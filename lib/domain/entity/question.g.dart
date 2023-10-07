// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      contents: json['contents'] as String,
      userId: json['userId'] as String,
      minimumBudget: json['minimumBudget'] as int,
      maximumBudget: json['maximumBudget'] as int,
      deadLine: DateTime.parse(json['deadLine'] as String),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'userId': instance.userId,
      'minimumBudget': instance.minimumBudget,
      'maximumBudget': instance.maximumBudget,
      'deadLine': instance.deadLine.toIso8601String(),
    };

_$QuestionResponseImpl _$$QuestionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionResponseImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      contents: json['contents'] as String,
      userId: json['userId'] as String,
      minimumBudget: json['minimumBudget'] as int,
      maximumBudget: json['maximumBudget'] as int,
      deadLine: DateTime.parse(json['deadLine'] as String),
      users: json['users'] == null
          ? null
          : UserData.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuestionResponseImplToJson(
        _$QuestionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'contents': instance.contents,
      'userId': instance.userId,
      'minimumBudget': instance.minimumBudget,
      'maximumBudget': instance.maximumBudget,
      'deadLine': instance.deadLine.toIso8601String(),
      'users': instance.users,
    };
