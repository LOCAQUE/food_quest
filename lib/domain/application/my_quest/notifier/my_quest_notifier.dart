import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:food_quest/domain/entity/question.dart';

part 'my_quest_notifier.g.dart';

@Riverpod(keepAlive: true)
class MyQuestNotifier extends _$MyQuestNotifier {
  @override
  Future<List<QuestionResponse>?> build() {
    final repository = ref.read(apiRepositoryProvider);
    return repository.getMyQuestList();
  }
}