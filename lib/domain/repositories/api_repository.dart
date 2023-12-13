import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/monster.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
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
  //クエストを作成する
  Future<int> createQuest({
    required String content,
    required String deadLine,
    required String prefecture,
    required String minimumBudget,
    required String maximumBudget,
  });
  //画像をストレージにアップロードする
  Future<List<String>> uploadImage({
    required List<XFile> selectedImage,
  });
  //クエストに画像を紐付ける
  Future<void> createQuestImage({
    required int questId,
    required List<String> imageUrls,
  });

  //回答一覧を取得する
  Future<List<Answer>?> getAnswerList({required int questId});

  //ベストアンサーにする
  Future<void> updateBestAnswer({required int answerId});

  //モンスターを作成する
  Future<void> createMonster({
    required int baseMonster,
    required int experience,
    required String monName,
  });

  //モンスター情報を取得する
  Future<Monster?> getMonster();

  //ツアー情報を取得する
  Future<List<TourResponse>?> getTourList();

  //ツアーを作成する
  Future<void> createTour({
    required String contents,
    required String budget,
    required String prefecture,
    required String title,
    required String imagePath,
  });
}
