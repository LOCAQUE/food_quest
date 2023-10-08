// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: json['id'] as int,
      content: json['content'] as String,
      questId: json['questId'] as int,
      uid: json['uid'] as String,
      bestAnswer: json['bestAnswer'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      minimumBudget: json['minimumBudget'] as int,
      maximumBudget: json['maximumBudget'] as int,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'questId': instance.questId,
      'uid': instance.uid,
      'bestAnswer': instance.bestAnswer,
      'createdAt': instance.createdAt.toIso8601String(),
      'minimumBudget': instance.minimumBudget,
      'maximumBudget': instance.maximumBudget,
    };

_$SendAnswerImpl _$$SendAnswerImplFromJson(Map<String, dynamic> json) =>
    _$SendAnswerImpl(
      content: json['content'] as String,
      questId: json['questId'] as int,
      uid: json['uid'] as String,
      bestAnswer: json['bestAnswer'] as bool,
      minimumBudget: json['minimumBudget'] as int,
      maximumBudget: json['maximumBudget'] as int,
    );

Map<String, dynamic> _$$SendAnswerImplToJson(_$SendAnswerImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'questId': instance.questId,
      'uid': instance.uid,
      'bestAnswer': instance.bestAnswer,
      'minimumBudget': instance.minimumBudget,
      'maximumBudget': instance.maximumBudget,
    };
