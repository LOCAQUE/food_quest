import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entity/question.dart';

class QuestionTile extends HookConsumerWidget {
  const QuestionTile({
  required this.questionList, super.key,
});

final List<QuestionResponse> questionList;

@override
Widget build(BuildContext context, WidgetRef ref) {
  return ListView.builder(
    itemCount: questionList.length,
    itemBuilder: (context, index) {
      final question = questionList[index];

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
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
                    Text(question.users?.prefecture ?? ''),
                    Text(question.formattedDeadLine),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
    // itemExtent: 100,
  );
}
}
