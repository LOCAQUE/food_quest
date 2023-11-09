import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_quest/domain/application/notifier/question_task_notifier.dart';

part 'quest_screen_notifier.freezed.dart';

@freezed
class QuestScreenState with _$QuestScreenState {
  factory QuestScreenState({
    @Default(false) bool isLoading,
  }) = _QuestScreenState;
}

final questScreenNotifierProvider =
    StateNotifierProvider<QuestScreenNotifier, QuestScreenState>((ref) {
  return QuestScreenNotifier(ref);
});

class QuestScreenNotifier extends StateNotifier<QuestScreenState> {
  QuestScreenNotifier(this.ref) : super(QuestScreenState()) {
    Future.microtask(_init);
  }
  final Ref ref;

  void _init() {
    state = state.copyWith(isLoading: true);
    ref.watch(questionTaskNotifierProvider.notifier).getQuestList();
    state = state.copyWith(isLoading: false);
  }
}
