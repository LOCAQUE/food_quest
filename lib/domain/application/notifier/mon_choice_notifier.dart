import 'package:flutter/cupertino.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/mon_choice_data.dart';
part 'mon_choice_notifier.g.dart';

@riverpod
class MonchoiceNotifier extends _$MonchoiceNotifier {
  //モンスターのデータを取得する
  @override
  Future<MonChoiceData?> build() {
    final repository = ref.read(apiRepositoryProvider);
    return repository.getBaseMonster();
  }

//名前も追加する
  Future<void> addMonster(int selectedPet) async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      await repository.addMonster(selectedPet);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
