import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/home_screen/answer_screen/answer_screen.dart';
import 'package:food_quest/presentation/screen/home_screen/component/make_question_modal.dart';
import 'package:food_quest/presentation/screen/home_screen/quest_screen/quest_screen_notifier.dart';

class QuestScreen extends HookConsumerWidget {
  const QuestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final isLoading = ref.watch(
      questScreenNotifierProvider.select((state) => state.isLoading),
    );
    final questionList = ref.watch(
          questionTaskNotifierProvider.select((state) => state.questionList),
        ) ??
        [];

    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (questionList.isEmpty) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: questionList.length,
            itemBuilder: (context, index) {
              final question = questionList[index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: QuestionTile(
                  question: question,
                  onTap: () {
                    AnswerScreen(question: question).show(context);
                  },
                ),
              );
            },
            // itemExtent: 100,
          ),
          Positioned(
            bottom: height * 0.15,
            right: width * 0.07,
            child: ElevatedButton(
              onPressed: () {
                MakeQuestionModal.show(context: context, isQuestion: true);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor, // ボタンの背景色を赤に設定
                shape: const CircleBorder(), // ボタンの形を円に設定
                padding: const EdgeInsets.all(20), // ボタンのパディングを設定
              ),
              child: const Icon(Icons.note),
            ),
          ),
        ],
      ),
    );
  }
}
