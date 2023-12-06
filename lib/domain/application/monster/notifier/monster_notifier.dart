import 'package:flutter/foundation.dart';
import 'package:food_quest/domain/entity/monster.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'monster_notifier.g.dart';

@riverpod
class MonsterNotifier extends _$MonsterNotifier {
  @override
  Future<Monster?> build() {
    final repository = ref.read(apiRepositoryProvider);
    return repository.getMonster();
  }

  Future<void> createMonster({
    required int baseMonster,
    required int experience,
    required String monName,
  }) async {
    try {
      final repository = ref.read(apiRepositoryProvider);
      state = const AsyncValue.loading();

      await repository.createMonster(
        baseMonster: baseMonster,
        experience: experience,
        monName: monName,
      );
    } catch (e, stackTrace) {
      debugPrint(e.toString());
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
