import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_quest/domain/entity/user_data.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

@freezed
abstract class Tour with _$Tour {
  const factory Tour({
    required String contents,
    required String userId,
    required int budget,
    required String prefecture,
    required String title,
    @Default('') String? imagePath,
    @Default(false) bool? isRelease,
  }) = _Tour;

  const Tour._();

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}

@freezed
abstract class TourResponse with _$TourResponse {
  const factory TourResponse({
    required int id,
    required DateTime createdAt,
    required String contents,
    required String userId,
    required int budget,
    required String prefecture,
    required String title,
    @Default('') String imagePath,
    @Default(false) bool isRelease,
    UserData? users,
  }) = _TourResponse;

  const TourResponse._();

  factory TourResponse.fromJson(Map<String, dynamic> json) =>
      _$TourResponseFromJson(json);
}
