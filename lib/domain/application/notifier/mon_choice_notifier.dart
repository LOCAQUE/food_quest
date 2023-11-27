import 'package:flutter/cupertino.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/mon_choice_data.dart';

// part 'mon_choice_notifier.freezed.dart';
part 'mon_choice_notifier.g.dart';

// @freezed
// class MonchoiceNotifierState with _$MonchoiceNotifierState {
//   factory MonchoiceNotifierState({
//     String? currentUserId,
//     MonChoiceData? monChoideData,
//   }) = _MonchoiceNotifierState;
// } いらない

//フォルダの位置変更

@riverpod
class MonchoiceNotifier extends _$MonchoiceNotifier {
  //モンスターのデータを取得する
  @override
  Future<MonChoiceData?> build() async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      return await repository.getBaseMonster();
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

//名前も追加する
  Future<void> addMonster(int selectedPet) 
    async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      await repository.addMonster(selectedPet);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
