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
  return MakeQuestionNotifier(client, ref);
});

class MakeQuestionNotifier extends StateNotifier<MakeQuestionNotifierState> {
  MakeQuestionNotifier(this.client, this.ref)
      : super(MakeQuestionNotifierState());
  final SupabaseClient client;
  final Ref ref;

  final TextEditingController contentController = TextEditingController();
  final TextEditingController minimumBudgetController = TextEditingController();
  final TextEditingController maximumBudgetController = TextEditingController();
  final TextEditingController deadLineController = TextEditingController();
  final TextEditingController prefectureController = TextEditingController();

  Future<void> createQuest() async {
    // final currentUserId = ref
    //     .watch(authNotifierProvider.select((state) => state.currentUser!.id))
    // ;

    final sendQuestionData = Question(
      contents: contentController.text,
      userId: 'f78677c4-8173-46be-8538-0c24dd25b173',
      //毎回だるいからモックで
      // userId: currentUserId,
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
