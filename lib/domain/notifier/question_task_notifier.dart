import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/domain/entity/task.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'question_task_notifier.freezed.dart';

@freezed
class QuestionTaskNotifierState with _$QuestionTaskNotifierState {
  factory QuestionTaskNotifierState({
    List<QuestionResponse>? questionList,
    List<QuestionResponse>? myQuestionList,
    List<TaskResponse>? taskList,
  }) = _QuestionTaskNotifierState;
}

final questionTaskNotifierProvider =
    StateNotifierProvider<QuestionTaskNotifier, QuestionTaskNotifierState>(
        (ref) {
  final client = ref.watch(supabaseClientProvider);
  return QuestionTaskNotifier(client, ref);
});

class QuestionTaskNotifier extends StateNotifier<QuestionTaskNotifierState> {
  QuestionTaskNotifier(this.client, this.ref)
      : super(QuestionTaskNotifierState());
  final SupabaseClient client;
  final Ref ref;

  final TextEditingController contentController = TextEditingController();
  final TextEditingController minimumBudgetController = TextEditingController();
  final TextEditingController maximumBudgetController = TextEditingController();
  final TextEditingController deadLineController = TextEditingController();
  final TextEditingController prefectureController = TextEditingController();

  Future<void> createQuest() async {
    final currentUserId = client.auth.currentUser?.id;
    final sendQuestionData = Question(
      contents: contentController.text,
      userId: currentUserId!,
      minimumBudget: int.parse(minimumBudgetController.text),
      maximumBudget: int.parse(maximumBudgetController.text),
      deadLine: DateTime.parse(deadLineController.text),
    );

    try {
      await client.from('quests').insert(sendQuestionData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //ホームの質問一覧
  Future<void> getQuestList() async {
    try {
      final response =
          await client.from('quests').select<PostgrestList>('*, users(*)');

      final questionList = response.map(QuestionResponse.fromJson).toList();
      state = state.copyWith(questionList: questionList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //自分の回答一覧
  Future<void> getMyQuestList() async {
    final currentUserId = client.auth.currentUser?.id;

    try {
      final response = await client
          .from('quests')
          .select<PostgrestList>('*, users(*)')
          .eq('userId', currentUserId);

      final myQuestionList = response.map(QuestionResponse.fromJson).toList();
      state = state.copyWith(myQuestionList: myQuestionList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // user_tasksテーブルからcurrentUserIdのtaskを取得
  Future<void> getTask() async {
    final currentUserId = client.auth.currentUser?.id;

    try {
      final response = await client.from('tasks').select<PostgrestList>();
      // .eq('userId', currentUserId);

      print('response: $response');
      final taskList = response.map(TaskResponse.fromJson).toList();
      state = state.copyWith(taskList: taskList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // user_tasksテーブルからcurrentUserIdのtaskを取得
  Future<void> getTaskList() async {
    final currentUserId = client.auth.currentUser?.id;

    try {
      final response = await client
          .from('user_tasks')
          .select<PostgrestList>('*, tasks(*)')
          .eq('userId', currentUserId);

      print('response: $response');
      final taskList = response.map(TaskResponse.fromJson).toList();
      state = state.copyWith(taskList: taskList);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
