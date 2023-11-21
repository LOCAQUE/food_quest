import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'answer_notifier.g.dart';

@riverpod
class AnswerNotiier extends _$AnswerNotiier {
  @override
  String build() {
    return '';
  }

  Future<void> createAnswer({
    required int questId,
    required String answerContent,
    required String minimumBudget,
    required String maximumBudget,
  }) async {
    final repository = ref.read(apiRepositoryProvider);

    return repository.createAnswer(
      questId: questId,
      answerContent: answerContent,
      minimumBudget: minimumBudget,
      maximumBudget: maximumBudget,
    );
  }
}
