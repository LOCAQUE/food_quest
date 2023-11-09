import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/domain/entity/user_data.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'make_question_notifier.freezed.dart';

@freezed
class MakeQuestionNotifierState with _$MakeQuestionNotifierState {
  factory MakeQuestionNotifierState({
    UserData? currentUser,
  }) = _MakeQuestionNotifierState;
}

final makeQuestionNotifierProvider =
    StateNotifierProvider<MakeQuestionNotifier, MakeQuestionNotifierState>(
        (ref) {
  final client = ref.watch(supabaseClientProvider);
  return MakeQuestionNotifier(client);
});

class MakeQuestionNotifier extends StateNotifier<MakeQuestionNotifierState> {
  MakeQuestionNotifier(this.client) : super(MakeQuestionNotifierState());
  final SupabaseClient client;

  final TextEditingController contentController = TextEditingController();
  final TextEditingController minimumBudgetController = TextEditingController();
  final TextEditingController maximumBudgetController = TextEditingController();
  final TextEditingController deadLineController = TextEditingController();
  final TextEditingController prefectureController = TextEditingController();

  Future<void> createQuest() async {
    final sendQuestionData = Question(
      contents: contentController.text,
      userId: 'c6ff2cec-e7cf-40f3-b7bc-3363d11bd3b0', //currentUserから取得
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
}
