import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';

//supabaseのAPIの実際の処理を書く
class SupabaseApiRepositoryImpl implements ApiRepository {
  SupabaseApiRepositoryImpl(this.supabaseClient);

  final SupabaseClient supabaseClient;

  @override
  Future<List<QuestionResponse>?> getMyQuestList() async {
    final currentId = supabaseClient.auth.currentUser?.id;

    try {
      final response = await supabaseClient
          .from('quests')
          .select<PostgrestList>('*, users(*)')
          .eq('userId', currentId);

      final myQuestList = response.map(QuestionResponse.fromJson).toList();
      return myQuestList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<QuestionResponse>?> getQuestList({
    required List<String>? selectedPrefectures,
  }) async {
    final currentId = supabaseClient.auth.currentUser?.id;

    try {
      final response = await supabaseClient
          .from('quests')
          .select<PostgrestList>('*, users(*), answers(*)')
          .neq('userId', currentId);

      final questList = response.map(QuestionResponse.fromJson).toList();
      return questList;
    } catch (e) {
      rethrow;
    }
  }
}
