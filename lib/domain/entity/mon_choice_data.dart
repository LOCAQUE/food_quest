import 'package:freezed_annotation/freezed_annotation.dart';

part 'mon_choice_data.freezed.dart';
part 'mon_choice_data.g.dart';

@freezed
abstract class MonChoiceData with _$MonChoiceData {
  const factory MonChoiceData({
    required int baseMonster,
  }) = _MonChoiceData;
  factory MonChoiceData.fromJson(Map<String, dynamic> json) =>
      _$MonChoiceDataFromJson(json);
}