import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
abstract class Answer with _$Answer {
  const factory Answer({
    required int id,
    required String content,
    required int questId,
    required String uid,
    required bool bestAnswer,
    required DateTime createdAt,
    required int minimumBudget,
    required int maximumBudget,
  }) = _Answer;

  const Answer._();

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  // DateTimeから"yyyy-MM-dd"形式の文字列に変換
  String get formattedCreatedAt => DateFormat('yyyy-MM-dd').format(createdAt);
}

@freezed
abstract class SendAnswer with _$SendAnswer {
  const factory SendAnswer({
    required String content,
    required int questId,
    required String uid,
    required bool bestAnswer,
    required int minimumBudget,
    required int maximumBudget,
  }) = _SendAnswer;

  const SendAnswer._();

  factory SendAnswer.fromJson(Map<String, dynamic> json) =>
      _$SendAnswerFromJson(json);
}

@freezed
abstract class ResponseAnswer with _$ResponseAnswer {
  const factory ResponseAnswer({
    required int id,
    required DateTime createdAt,
    required String content,
    required int questId,
    required String uid,
    required bool bestAnswer,
    required int minimumBudget,
    required int maximumBudget,
  }) = _ResponseAnswer;

  const ResponseAnswer._();

  factory ResponseAnswer.fromJson(Map<String, dynamic> json) =>
      _$ResponseAnswerFromJson(json);
}
