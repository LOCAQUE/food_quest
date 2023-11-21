import 'package:flutter/material.dart';
import 'package:food_quest/domain/application/select_prefecture/notifier/select_prefecture_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';

part 'quest_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class QuestListNotifier extends _$QuestListNotifier {
  @override
  Future<List<QuestionResponse>?> build() {
    final repository = ref.read(apiRepositoryProvider);
    final selectedPrefectures = ref.watch(selectPrefectureNotifierProvider);

    return repository.getQuestList(
      selectedPrefectures: selectedPrefectures.value,
    );
  }

  Future<void> createQuest({
    required String content,
    required String deadLine,
    required String prefecture,
    required String minimumBudget,
    required String maximumBudget,
  }) async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      state = const AsyncValue.loading();

      //クエストを作成する
      await repository.createQuest(
        content: content,
        deadLine: deadLine,
        prefecture: prefecture,
        minimumBudget: minimumBudget,
        maximumBudget: maximumBudget,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
