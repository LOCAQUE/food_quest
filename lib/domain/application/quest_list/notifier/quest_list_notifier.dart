import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';

part 'quest_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class QuestListNotifier extends _$QuestListNotifier {
  @override
  Future<List<QuestionResponse>?> build() {
    final repository = ref.read(apiRepositoryProvider);
    return repository.getQuestList();
  }
}
