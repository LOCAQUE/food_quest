import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/mon_choice_data.dart';
import 'package:food_quest/domain/entity/user_data.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'mon_choice_notifier.freezed.dart';

@freezed
class AddmonsterNotifierState with _$AddmonsterNotifierState {
  factory AddmonsterNotifierState({
    UserData? currentUser,
    String? currentUserId,
  }) = _AddmonsterNotifierState;
}

final addmonsterNotifierProvider =
    StateNotifierProvider<AddmonsterNotifier, AddmonsterNotifierState>((ref) {
  final client = ref.watch(supabaseClientProvider);
  return AddmonsterNotifier(client);
});

class AddmonsterNotifier extends StateNotifier<AddmonsterNotifierState> {
  AddmonsterNotifier(this.client)
      : super(
          AddmonsterNotifierState(
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
