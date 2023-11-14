// ignore_for_file: lines_longer_than_80_chars

import 'package:food_quest/domain/entity/answer.dart';
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
          .in_('prefecture', selectedPrefectures!)
          .neq('userId', currentId);

      final questList = response.map(QuestionResponse.fromJson).toList();
      return questList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createAnswer({
    required int questId,
    required String answerContent,
    required String minimumBudget,
    required String maximumBudget,
  }) async {
    final currentId = supabaseClient.auth.currentUser?.id;

    final sendAnswerData = SendAnswer(
      content: answerContent,
      questId: questId,
      uid: currentId!,
      bestAnswer: false,
      minimumBudget: int.parse(minimumBudget),
      maximumBudget: int.parse(maximumBudget),
    );

    try {
      await supabaseClient.from('answers').insert(sendAnswerData);
    } catch (e) {
      rethrow;
    }
  }
}
