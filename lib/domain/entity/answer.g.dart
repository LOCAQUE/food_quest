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
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'questId': instance.questId,
      'uid': instance.uid,
      'bestAnswer': instance.bestAnswer,
      'createdAt': instance.createdAt.toIso8601String(),
    };
