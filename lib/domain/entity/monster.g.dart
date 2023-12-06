// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonsterImpl _$$MonsterImplFromJson(Map<String, dynamic> json) =>
    _$MonsterImpl(
      baseMonster: json['baseMonster'] as int,
      experience: json['experience'] as int,
      monName: json['monName'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$MonsterImplToJson(_$MonsterImpl instance) =>
    <String, dynamic>{
      'baseMonster': instance.baseMonster,
      'experience': instance.experience,
      'monName': instance.monName,
      'userId': instance.userId,
    };

_$ResponceMonsterImpl _$$ResponceMonsterImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponceMonsterImpl(
      baseResponceMonster: json['baseResponceMonster'] as int,
      experience: json['experience'] as int,
      monName: json['monName'] as String,
      userId: json['userId'] as String,
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ResponceMonsterImplToJson(
        _$ResponceMonsterImpl instance) =>
    <String, dynamic>{
      'baseResponceMonster': instance.baseResponceMonster,
      'experience': instance.experience,
      'monName': instance.monName,
      'userId': instance.userId,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
