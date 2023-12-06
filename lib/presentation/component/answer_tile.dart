import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/answer/usecase/grouped_answers.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/answer/notifier/answer_notifier.dart';
import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/user_data.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/gen/assets.gen.dart';
import 'package:food_quest/gen/colors.gen.dart';

class BestAnswerTile extends HookConsumerWidget {
  const BestAnswerTile({
    required this.answer,
    required this.user,
    required this.isBestAnswer,
    super.key,
  });

  final Answer answer;
  final UserData user;
  final bool isBestAnswer;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                if (isBestAnswer)
                  SizedBox(
                    width: 72,
                    height: 72,
                    child: Assets.images.test.image(),
                  ),
              ],
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

class NotBestAnswerTile extends HookConsumerWidget {
  const NotBestAnswerTile({
    required this.answer,
    required this.user,
    required this.isMyQuest,
    required this.questId,
    required this.isContainBestAnswer,
    super.key,
  });

  final Answer answer;
  final UserData user;
  final bool isMyQuest;
  final int questId;
  final bool isContainBestAnswer;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final isBestAnswerState = useState<bool>(answer.bestAnswer);
    final isMyAnswer = answer.uid == ref.read(supabaseCurrentUser)!.id;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                // 自分のクエストの場合かつ自分の答じゃない場合かつベストアンサーがない場合
                if (isMyQuest && !isMyAnswer && !isContainBestAnswer)
                  ElevatedButton(
                    onPressed: () async {
                      // ベストアンサーにする
                      await ref
                          .read(answerNotiierProvider.notifier)
                          .updateBestAnswer(
                            answerId: answer.id,
                          );
                      // ベストアンサーの状態を更新
                      ref.refresh(
                        GroupedAnswersNotfiierProvider(questId: questId),
                      );
                      isBestAnswerState.value = true;
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      foregroundColor: AppColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'ベストアンサー',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
              ],
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
