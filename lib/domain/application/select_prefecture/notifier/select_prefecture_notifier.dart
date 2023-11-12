import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_prefecture_notifier.g.dart';

// 選択した都道府県をグローバルに管理する
@Riverpod(keepAlive: true)
class SelectPrefectureNotifier extends _$SelectPrefectureNotifier {
  @override
  List<String> build() {
    return [];
  }

  void updatePrefecture({required List<String> prefectureList}) {
    state = prefectureList;
  }
}
//TODO: sheard_preferencesを使って選択した都道府県を保存する