import 'package:flutter/cupertino.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/mon_choice_data.dart';

part 'mon_choice_notifier.freezed.dart';
part 'mon_choice_notifier.g.dart';

@freezed
class MonchoiceNotifierState with _$MonchoiceNotifierState {
  factory MonchoiceNotifierState({
    String? currentUserId,
    MonChoiceData? monChoideData,
  }) = _MonchoiceNotifierState;
}

@riverpod
class MonchoiceNotifier extends _$MonchoiceNotifier {
  @override
  MonchoiceNotifierState? build() {
    return null;
  }

  Future<void> addMonster(int selectedPet) 
    async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      await repository.addMonster(selectedPet);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
  
  Future<MonChoiceData?> getBaseMonster() 
    async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      await repository.getBaseMonster(
      );
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
