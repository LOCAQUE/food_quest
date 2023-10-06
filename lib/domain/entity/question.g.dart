// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      contents: json['contents'] as String,
      userId: json['userId'] as String,
      minimumBudget: json['minimumBudget'] as int,
      maximumBudget: json['maximumBudget'] as int,
      deadLine: DateTime.parse(json['deadLine'] as String),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'contents': instance.contents,
      'userId': instance.userId,
      'minimumBudget': instance.minimumBudget,
      'maximumBudget': instance.maximumBudget,
      'deadLine': instance.deadLine.toIso8601String(),
    };
