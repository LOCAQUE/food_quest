import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest_image.freezed.dart';
part 'quest_image.g.dart';

@freezed
abstract class QuestImage with _$QuestImage {
  const factory QuestImage({
    required int questId,
    required String imageUrl,
  }) = _QuestImage;

  const QuestImage._();

  factory QuestImage.fromJson(Map<String, dynamic> json) =>
      _$QuestImageFromJson(json);
}

@freezed
abstract class QuestImageResponse with _$QuestImageResponse {
  const factory QuestImageResponse({
    required int id,
    required int questId,
    required String imageUrl,
  }) = _QuestImageResponse;

  const QuestImageResponse._();

  factory QuestImageResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestImageResponseFromJson(json);
}
