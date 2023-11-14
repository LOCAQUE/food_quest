import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'answer_notifier.freezed.dart';

@freezed
class AnswerNotifierState with _$AnswerNotifierState {
  factory AnswerNotifierState({
    List<ResponseAnswer>? myAnswerList,
    String? currentUserId,
  }) = _AnswerNotifierState;
}

final answersNotifierProvider =
    StateNotifierProvider<AnswerNotifier, AnswerNotifierState>((ref) {
  final client = ref.watch(supabaseClientProvider);
  return AnswerNotifier(client, ref);
});

class AnswerNotifier extends StateNotifier<AnswerNotifierState> {
  AnswerNotifier(this.client, this.ref)
      : super(
          AnswerNotifierState(
            currentUserId: client.auth.currentUser?.id,
          ),
        );
  final SupabaseClient client;
  final Ref ref;

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
