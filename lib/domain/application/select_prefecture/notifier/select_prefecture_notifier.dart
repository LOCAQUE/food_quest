import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/constants/shared_prefrences_key_list.dart';
import 'package:food_quest/domain/repositories/shared_preferences_repository.dart';

part 'select_prefecture_notifier.g.dart';

// 選択した都道府県をグローバルに管理する
@Riverpod(keepAlive: true)
class SelectPrefectureNotifier extends _$SelectPrefectureNotifier {
  @override
  Future<List<String>?> build() async {
    final sharedPreferencesRepository =
        ref.watch(sharedPreferencesRepositoryProvider);

    final selectedPrefectureList = await sharedPreferencesRepository
        .getSelectedPrefecture(key: selectedPrefecturesKey);
    return selectedPrefectureList;
  }

  Future<void> updatePrefecture({required List<String> prefectureList}) async {
    final sharedPreferencesRepository =
        ref.watch(sharedPreferencesRepositoryProvider);

    //端末に保存する
    await sharedPreferencesRepository.setSelectedPrefecture(
      key: selectedPrefecturesKey,
      prefectures: prefectureList,
    );

    //stateを更新する
    final selectedPrefectureList = AsyncValue.data(
      await sharedPreferencesRepository.getSelectedPrefecture(
        key: selectedPrefecturesKey,
      ),
    );

    state = selectedPrefectureList;
  }
}
