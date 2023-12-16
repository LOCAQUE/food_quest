// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImpl _$$TourImplFromJson(Map<String, dynamic> json) => _$TourImpl(
      contents: json['contents'] as String,
      userId: json['userId'] as String,
      budget: json['budget'] as int,
      prefecture: json['prefecture'] as String,
      title: json['title'] as String,
      imagePath: json['imagePath'] as String? ?? '',
      isRelease: json['isRelease'] as bool? ?? false,
    );

Map<String, dynamic> _$$TourImplToJson(_$TourImpl instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'userId': instance.userId,
      'budget': instance.budget,
      'prefecture': instance.prefecture,
      'title': instance.title,
      'imagePath': instance.imagePath,
      'isRelease': instance.isRelease,
    };

_$TourResponseImpl _$$TourResponseImplFromJson(Map<String, dynamic> json) =>
    _$TourResponseImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      contents: json['contents'] as String,
      userId: json['userId'] as String,
      budget: json['budget'] as int,
      prefecture: json['prefecture'] as String,
      title: json['title'] as String,
      imagePath: json['imagePath'] as String? ?? '',
      isRelease: json['isRelease'] as bool? ?? false,
      users: json['users'] == null
          ? null
          : UserData.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TourResponseImplToJson(_$TourResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'contents': instance.contents,
      'userId': instance.userId,
      'budget': instance.budget,
      'prefecture': instance.prefecture,
      'title': instance.title,
      'imagePath': instance.imagePath,
      'isRelease': instance.isRelease,
      'users': instance.users,
    };
