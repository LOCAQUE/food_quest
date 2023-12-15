// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_road_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourRoadMapImpl _$$TourRoadMapImplFromJson(Map<String, dynamic> json) =>
    _$TourRoadMapImpl(
      day: json['day'] as int,
      tourId: json['tourId'] as int,
      address: json['address'] as String? ?? 'null',
      detailId: json['detailId'] as String? ?? 'null',
      name: json['name'] as String? ?? 'null',
      longitude: json['longitude'] as int? ?? 0,
      latitude: json['latitude'] as int? ?? 0,
      imagePath: json['imagePath'] as String? ?? 'null',
    );

Map<String, dynamic> _$$TourRoadMapImplToJson(_$TourRoadMapImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'tourId': instance.tourId,
      'address': instance.address,
      'detailId': instance.detailId,
      'name': instance.name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'imagePath': instance.imagePath,
    };

_$TourRoadMapResponseImpl _$$TourRoadMapResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TourRoadMapResponseImpl(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      day: json['day'] as int,
      tourId: json['tourId'] as int,
      address: json['address'] as String? ?? 'null',
      detailId: json['detailId'] as String? ?? 'null',
      name: json['name'] as String? ?? 'null',
      longitude: json['longitude'] as int? ?? 0,
      latitude: json['latitude'] as int? ?? 0,
      imagePath: json['imagePath'] as String? ?? 'null',
    );

Map<String, dynamic> _$$TourRoadMapResponseImplToJson(
        _$TourRoadMapResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'day': instance.day,
      'tourId': instance.tourId,
      'address': instance.address,
      'detailId': instance.detailId,
      'name': instance.name,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'imagePath': instance.imagePath,
    };
