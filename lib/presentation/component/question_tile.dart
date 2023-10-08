import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';

class QuestionTile extends StatelessWidget {
  const QuestionTile({
    required this.question, this.onTap, super.key,
  });

  final QuestionResponse question;
  final GestureTapCallback? onTap;

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
                  Text(question.users?.prefecture ?? ''),
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
