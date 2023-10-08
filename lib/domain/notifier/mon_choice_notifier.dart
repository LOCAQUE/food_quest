import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/mon_choice_data.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'mon_choice_notifier.freezed.dart';

@freezed
class MonchoiceNotifierState with _$MonchoiceNotifierState {
  factory MonchoiceNotifierState({
    String? currentUserId,
    MonChoiceData? monChoideData,
  }) = _MonchoiceNotifierState;
}

final monchoiceNotifierProvider =
    StateNotifierProvider<MonchoiceNotifier, MonchoiceNotifierState>((ref) {
  final client = ref.watch(supabaseClientProvider);
  return MonchoiceNotifier(client);
});

class MonchoiceNotifier extends StateNotifier<MonchoiceNotifierState> {
  MonchoiceNotifier(this.client)
      : super(
          MonchoiceNotifierState(
            currentUserId: client.auth.currentUser?.id,
          ),
        );
  final SupabaseClient client;

  Future<void> addMonster(int selectedPet) async {
    try {
      await client.from('monsters').insert({
        'userId': state.currentUserId,
        'baseMonster': selectedPet,
        'experience': 0,
        'createdAt': DateTime.now().toUtc().toIso8601String(),
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<MonChoiceData?> getBaseMonster() async {
    // カレントユーザーのIDを確認
    final userId = state.currentUserId;
    if (userId == null) return null;

    final response = await client
        .from('monsters')
        .select<PostgrestList>('baseMonster')
        .eq('userId', userId);

    return MonChoiceData.fromJson(response.first);
  }
}
