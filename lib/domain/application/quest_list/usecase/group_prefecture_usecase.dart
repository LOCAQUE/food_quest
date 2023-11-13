import 'package:food_quest/domain/application/quest_list/notifier/quest_list_notifier.dart';
import 'package:food_quest/domain/application/select_prefecture/notifier/select_prefecture_notifier.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'group_prefecture_usecase.g.dart';

// クエスト一覧を選択した都道府県別にグループ化
@riverpod
class GroupePrefectureUsecase extends _$GroupePrefectureUsecase {
  @override
  Future<Map<String, List<QuestionResponse>>> build() async {
    final questList = await ref.watch(questListNotifierProvider.future);
    final selectedPrefectures =
        await ref.watch(selectPrefectureNotifierProvider.future);

    // Map型の雛形を作成
    final questsByPrefecture = {
      for (final prefecture in selectedPrefectures)
        prefecture: <QuestionResponse>[]
    };

    // 作成した雛形にデータを追加
    for (final QuestionResponse quest in questList ?? []) {
      final prefecture = quest.prefecture;
      questsByPrefecture.putIfAbsent(prefecture, () => []).add(quest);
    }

    return questsByPrefecture;
  }
}
