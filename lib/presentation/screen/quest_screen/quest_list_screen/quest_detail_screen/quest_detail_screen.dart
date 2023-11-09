import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/answer_tile.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/make_question_modal.dart';

class QuestDetailScreen extends HookConsumerWidget {
  const QuestDetailScreen({required this.question, super.key});

  final QuestionResponse question;

  Future<void> show(BuildContext context) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColor.secondColor,
      builder: (context) => QuestDetailScreen(
        question: question,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answers = question.answers ?? [];

    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, top: 28),
                      child: TextButton(
                        child: const Text(
                          'キャンセル',
                          style: TextStyle(color: AppColor.textColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  const Gap(8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    //質問
                    child: QuestionTile(
                      question: question,
                      onTap: () {},
                    ),
                  ),
                  const Gap(8),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        '回答',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Gap(8),
                  if (answers.isEmpty) const Center(child: Text('回答がありません')),
                  //回答
                  if (answers.isNotEmpty)
                    ...List.generate(answers.length, (index) {
                      return AnswerTile(
                        user: question.users!,
                        answer: answers[index],
                      );
                    }),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 24,
            left: MediaQuery.of(context).size.width * 0.13,
            child: CustomButton(
              variant: ButtonVariant.primary,
              text: '回答する',
              onPressed: () {
                MakeQuestionModal.show(
                  context: context,
                  isQuestion: false,
                  content: question.contents,
                  questId: question.id,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
