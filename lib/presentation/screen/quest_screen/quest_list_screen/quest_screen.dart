// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/make_question_modal.dart';
import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class QuestAutoRouterScreen extends AutoRouter {
  const QuestAutoRouterScreen({super.key});
}

@RoutePage()
class QuestScreen extends HookConsumerWidget {
  const QuestScreen({required this.questions, super.key});

  final List<QuestionResponse> questions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    if (questions.isEmpty) {
      return const Center(child: Text('質問がありません'));
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: QuestionTile(
                  question: question,
                  onTap: () {
                    context.pushRoute(QuestDetailRoute(question: question));
                  },
                ),
              );
            },
            // itemExtent: 100,
          ),
          Positioned(
            bottom: height * 0.05,
            right: width * 0.07,
            child: ElevatedButton(
              onPressed: () {
                MakeQuestionModal.show(
                  context: context,
                );
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
