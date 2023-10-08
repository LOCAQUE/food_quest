import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'answer_notifier.freezed.dart';

@freezed
class AnswerNotifierState with _$AnswerNotifierState {
  factory AnswerNotifierState({
    List<QuestionResponse>? questionList,
  }) = _AnswerNotifierState;
}

final answerNotifierProvider =
    StateNotifierProvider<AnswerNotifier, AnswerNotifierState>((ref) {
  final client = ref.watch(supabaseClientProvider);
  return AnswerNotifier(client, ref);
});

class AnswerNotifier extends StateNotifier<AnswerNotifierState> {
  AnswerNotifier(this.client, this.ref) : super(AnswerNotifierState());
  final SupabaseClient client;
  final Ref ref;

  final TextEditingController contentController = TextEditingController();
  final TextEditingController minimumBudgetController = TextEditingController();
  final TextEditingController maximumBudgetController = TextEditingController();

  Future<void> createAnswer({required int questId}) async {
    final currentUserId = client.auth.currentUser?.id;
    final sendAnswerData = SendAnswer(
      content: contentController.text,
      uid: currentUserId!,
      minimumBudget: int.parse(minimumBudgetController.text),
      maximumBudget: int.parse(maximumBudgetController.text),
      bestAnswer: false,
      questId: questId,
    );

    try {
      await client.from('answers').insert(sendAnswerData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
