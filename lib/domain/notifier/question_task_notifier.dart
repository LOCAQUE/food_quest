import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'question_task_notifier.freezed.dart';

@freezed
class QuestionTaskNotifierState with _$QuestionTaskNotifierState {
  factory QuestionTaskNotifierState({
    List<QuestionResponse>? questionList,
  }) = _QuestionTaskNotifierState;
}

final questionTaskNotifierProvider =
    StateNotifierProvider<QuestionTaskNotifier, QuestionTaskNotifierState>(
        (ref) {
  final client = ref.watch(supabaseClientProvider);
  return QuestionTaskNotifier(client, ref);
});

class QuestionTaskNotifier extends StateNotifier<QuestionTaskNotifierState> {
  QuestionTaskNotifier(this.client, this.ref)
      : super(QuestionTaskNotifierState());
  final SupabaseClient client;
  final Ref ref;

  final TextEditingController contentController = TextEditingController();
  final TextEditingController minimumBudgetController = TextEditingController();
  final TextEditingController maximumBudgetController = TextEditingController();
  final TextEditingController deadLineController = TextEditingController();
  final TextEditingController prefectureController = TextEditingController();

  Future<void> createQuest() async {
    final currentUserId = client.auth.currentUser?.id;
    final sendQuestionData = Question(
      contents: contentController.text,
      userId: currentUserId!,
      minimumBudget: int.parse(minimumBudgetController.text),
      maximumBudget: int.parse(maximumBudgetController.text),
      deadLine: DateTime.parse(deadLineController.text),
    );

    try {
      await client.from('quests').insert(sendQuestionData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> getQuestList() async {
    try {
      final response =
          await client.from('quests').select<PostgrestList>('*, users(*)');

      final questionList = response.map(QuestionResponse.fromJson).toList();
      state = state.copyWith(questionList: questionList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
