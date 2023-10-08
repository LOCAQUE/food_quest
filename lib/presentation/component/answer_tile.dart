import 'package:flutter/material.dart';
import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/user_data.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';

class AnswerTile extends HookConsumerWidget {
  const AnswerTile({
    required this.answer,
    required this.user, super.key,
  });

  final Answer answer;
  final UserData user;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Card(
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
              user.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Gap(32),
            Text(answer.content),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(user.name),
                Text(answer.formattedCreatedAt),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
