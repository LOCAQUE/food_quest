import 'package:freezed_annotation/freezed_annotation.dart';
part 'tour_road_map.freezed.dart';
part 'tour_road_map.g.dart';

@freezed
abstract class TourRoadMap with _$TourRoadMap {
  const factory TourRoadMap({
    required int day,
    required int tourId,
    @Default('null') String? address,
    @Default('null') String? detailId,
    @Default('null') String? name,
    @Default(0) int? longitude,
    @Default(0) int? latitude,
    @Default('null') String? imagePath,
  }) = _TourRoadMap;

  const TourRoadMap._();

  factory TourRoadMap.fromJson(Map<String, dynamic> json) =>
      _$TourRoadMapFromJson(json);
}

@freezed
abstract class TourRoadMapResponse with _$TourRoadMapResponse {
  const factory TourRoadMapResponse({
    required int id,
    required DateTime createdAt,
    required int day,
    required int tourId,
    @Default('null') String? address,
    @Default('null') String? detailId,
    @Default('null') String? name,
    @Default(0) int? longitude,
    @Default(0) int? latitude,
    @Default('null') String? imagePath,
  }) = _TourRoadMapResponse;

  const TourRoadMapResponse._();

  factory TourRoadMapResponse.fromJson(Map<String, dynamic> json) =>
      _$TourRoadMapResponseFromJson(json);
}
