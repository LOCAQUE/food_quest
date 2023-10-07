import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String contents,
    required String userId,
    required int minimumBudget,
    required int maximumBudget,
    required DateTime deadLine,
  }) = _Question;
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class QuestionResponse with _$QuestionResponse {
  const factory QuestionResponse({
    required int id,
    required DateTime createdAt,
    required String contents,
    required String userId,
    required int minimumBudget,
    required int maximumBudget,
    required DateTime deadLine,
  }) = _QuestionResponse;
  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
}
