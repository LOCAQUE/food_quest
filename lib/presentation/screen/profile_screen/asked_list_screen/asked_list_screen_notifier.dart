import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';

part 'asked_list_screen_notifier.freezed.dart';

@freezed
class AskedListScreenState with _$AskedListScreenState {
  factory AskedListScreenState({
    @Default(false) bool isLoading,
  }) = _AskedListScreenState;
}

final askedListScreenNotifierProvider =
    StateNotifierProvider<AskedListScreenNotifier, AskedListScreenState>((ref) {
  return AskedListScreenNotifier(ref);
});

class AskedListScreenNotifier extends StateNotifier<AskedListScreenState> {
  AskedListScreenNotifier(this.ref) : super(AskedListScreenState()) {
    Future.microtask(_init);
  }
  final Ref ref;

  Future<void> _init() async {
    state = state.copyWith(isLoading: true);
    await ref.watch(questionTaskNotifierProvider.notifier).getMyQuestList();
    state = state.copyWith(isLoading: false);
  }
}
