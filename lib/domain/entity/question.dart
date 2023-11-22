import 'package:food_quest/domain/entity/quest_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/user_data.dart';

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
    required String prefecture,
  }) = _Question;

  const Question._();

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
    required String prefecture,
    UserData? users,
    List<Answer>? answers,
    List<QuestImage>? questImages,
  }) = _QuestionResponse;

  const QuestionResponse._();

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);

  // DateTimeから"yyyy-MM-dd"形式の文字列に変換
  String get formattedDeadLine => DateFormat('yyyy-MM-dd').format(deadLine);
}
