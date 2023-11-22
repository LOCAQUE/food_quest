import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';

class QuestionTiles extends HookConsumerWidget {
  const QuestionTiles({
    required this.questionList,
    required this.onTap,
    super.key,
  });

  final List<QuestionResponse> questionList;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: questionList.length,
      itemBuilder: (context, index) {
        final question = questionList[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: QuestionTile(question: question, onTap: onTap),
        );
      },
      // itemExtent: 100,
    );
  }
}

class QuestionTile extends StatelessWidget {
  const QuestionTile({
    required this.question,
    required this.onTap,
    super.key,
  });

  final QuestionResponse question;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question.users?.name ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              
              const Gap(32),
              Text(question.contents),
              const Gap(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(question.prefecture),
                  Text(question.formattedDeadLine),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
