import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';

part 'answer_notifier.g.dart';

@riverpod
class AnswerNotiier extends _$AnswerNotiier {
  @override
  Future<List<Answer>?> build() {
    return Future.value(<Answer>[]);
  }

  Future<void> createAnswer({
    required int questId,
    required String answerContent,
    required String minimumBudget,
    required String maximumBudget,
  }) async {
    try {
      final repository = ref.read(apiRepositoryProvider);

      await repository.createAnswer(
        questId: questId,
        answerContent: answerContent,
        minimumBudget: minimumBudget,
        maximumBudget: maximumBudget,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<List<Answer>?> getAnswerList({required int questId}) async {
    try {
      final repository = ref.read(apiRepositoryProvider);

      final answerList = await repository.getAnswerList(questId: questId);
      return answerList;
    } catch (e, stackTrace) {
      debugPrint(e.toString());
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> updateBestAnswer({required int answerId}) async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      await repository.updateBestAnswer(answerId: answerId);
    } catch (e, stackTrace) {
      debugPrint(e.toString());
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
