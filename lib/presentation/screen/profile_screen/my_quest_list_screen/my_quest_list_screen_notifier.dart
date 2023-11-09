import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';

part 'my_quest_list_screen_notifier.freezed.dart';

@freezed
class MyQuestListScreenState with _$MyQuestListScreenState {
  factory MyQuestListScreenState({
    @Default(false) bool isLoading,
  }) = _MyQuestListScreenState;
}

final myQuestListScreenNotifierProvider =
    StateNotifierProvider<MyQuestListScreenNotifier, MyQuestListScreenState>((ref) {
  return MyQuestListScreenNotifier(ref);
});

class MyQuestListScreenNotifier extends StateNotifier<MyQuestListScreenState> {
  MyQuestListScreenNotifier(this.ref) : super(MyQuestListScreenState()) {
    Future.microtask(_init);
  }
  final Ref ref;

  Future<void> _init() async {
    state = state.copyWith(isLoading: true);
    await ref.watch(questionTaskNotifierProvider.notifier).getMyQuestList();
    state = state.copyWith(isLoading: false);
  }
}
