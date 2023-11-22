// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestImageImpl _$$QuestImageImplFromJson(Map<String, dynamic> json) =>
    _$QuestImageImpl(
      questId: json['questId'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$QuestImageImplToJson(_$QuestImageImpl instance) =>
    <String, dynamic>{
      'questId': instance.questId,
      'imageUrl': instance.imageUrl,
    };

_$QuestImageResponseImpl _$$QuestImageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestImageResponseImpl(
      id: json['id'] as int,
      questId: json['questId'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$QuestImageResponseImplToJson(
        _$QuestImageResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questId': instance.questId,
      'imageUrl': instance.imageUrl,
    };
