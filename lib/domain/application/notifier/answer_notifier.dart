import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'answer_notifier.freezed.dart';
part 'answer_notifier.g.dart';

@freezed
class AnswerNotifierState with _$AnswerNotifierState {
  factory AnswerNotifierState({
    List<ResponseAnswer>? myAnswerList,
    String? currentUserId,
  }) = _AnswerNotifierState;
}

@riverpod
class AnswerNotifier extends 
StateNotifier<AnswerNotifierState> 
with _$AnswerNotifier {
  AnswerNotifier(this.ref, {required this.client})
      : super(
          AnswerNotifierState(
            currentUserId: client.auth.currentUser?.id,
          ),
        );

  late SupabaseClient client;
  final TextEditingController contentController = TextEditingController();
  final TextEditingController minimumBudgetController = TextEditingController();
  final TextEditingController maximumBudgetController = TextEditingController();

  @override
  Future<AnswerNotifierState> build(BuildContext context) async {
    final client = ref.watch(supabaseClientProvider);
    return AnswerNotifier(client, ref);
  }
  

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

  Future<void> getMyAnswerList() async {
    final currentUserId = client.auth.currentUser?.id;
    try {
      final response = await client
          .from('answers')
          .select<PostgrestList>()
          .eq('uid', currentUserId);

      final myAnswerList = response.map(ResponseAnswer.fromJson).toList();

      state = state.copyWith(myAnswerList: myAnswerList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
