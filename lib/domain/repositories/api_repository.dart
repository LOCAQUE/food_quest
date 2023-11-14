import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/infrastructure/data/supabase_api_repository_impl.dart';

final apiRepositoryProvider = Provider<ApiRepository>((ref) {
  //clientをDIする
  final client = ref.read(supabaseClientProvider);
  //ここを書き換えると、別の実装に差し替えられる
  return SupabaseApiRepositoryImpl(client);
});

abstract class ApiRepository {
  //自分のクエスト一覧を取得する
  Future<List<QuestionResponse>?> getMyQuestList();
  //ホームのクエスト一覧
  Future<List<QuestionResponse>?> getQuestList({
    required List<String>? selectedPrefectures,
  });
  //回答を作成する
  Future<void> createAnswer({
    required int questId,
    required String answerContent,
    required String minimumBudget,
    required String maximumBudget,
  });
}
