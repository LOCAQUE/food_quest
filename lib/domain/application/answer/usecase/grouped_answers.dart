import 'package:flutter/material.dart';
import 'package:food_quest/domain/application/answer/notifier/answer_notifier.dart';
import 'package:food_quest/domain/entity/answer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'grouped_answers.g.dart';

//回答一覧をベストアンサーがtureのものとfalseのものに分ける
@riverpod
class GroupedAnswersNotfiier extends _$GroupedAnswersNotfiier {
  @override
  Future<Map<String, List<Answer>>?> build({required int questId}) async {
    //回答一覧を取得
    final answers = await ref
        .read(answerNotiierProvider.notifier)
        .getAnswerList(questId: questId);

    if (answers == null) {
      debugPrint('回答一覧が取得できませんでした');
      return null;
    }
    
    final groupedAnswers = <String, List<Answer>>{
      'isBestAnswer': [...answers.where((answer) => answer.bestAnswer)],
      'notBestAnswer': [
        ...answers.where((answer) => !answer.bestAnswer),
      ],
    };
    return groupedAnswers;
  }
}
