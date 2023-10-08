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
  }) = _Answer;

  const Answer._();

  factory Answer.fromJson(Map<String, dynamic> json) =>
      _$AnswerFromJson(json);

  // DateTimeから"yyyy-MM-dd"形式の文字列に変換
  String get formattedDeadLine => DateFormat('yyyy-MM-dd').format(createdAt);
}