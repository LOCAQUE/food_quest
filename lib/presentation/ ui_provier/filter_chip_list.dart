import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'filter_chip_list.g.dart';

@riverpod
class FilterChipList extends _$FilterChipList {
  @override
  List<String> build() {
    return [];
  }

// chipが選択されていたらstateに追加、選択されていなかったらstateから削除
  void addFilterChip({required String title, required bool value}) {
    state = [
      ...state,
      if (value && !state.contains(title)) title,
    ]..removeWhere((chip) => !value && chip == title);
  }
}
