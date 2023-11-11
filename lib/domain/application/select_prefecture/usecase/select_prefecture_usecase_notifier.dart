import 'package:food_quest/domain/application/select_prefecture/notifier/select_prefecture_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'select_prefecture_usecase_notifier.g.dart';

// 選択中の都道府県
@riverpod
class SelectPrefectureUsecaseNotifier
    extends _$SelectPrefectureUsecaseNotifier {
  @override
  List<String> build() {
    final selectedPrefectureList = ref.watch(selectPrefectureNotifierProvider);
    return selectedPrefectureList;
  }

  void togglePrefecture({
    required String prefecture,
    required bool isSelected,
  }) {
    if (isSelected) {
      state = [...state, prefecture];
    } else {
      state = state.where((element) => element != prefecture).toList();
    }
  }

  // 選択中の都道府県が3つ以上かどうか
  bool get isNumberOfSelectedOverThree {
    return state.length >= 3;
  }

  // 県選択ボタンを押せるかどうか
  bool get isSelectable {
    return state.isNotEmpty;
  }
}
