import 'package:flutter/material.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/gen/colors.gen.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/user_data.dart';

class AnswerTile extends HookConsumerWidget {
  const AnswerTile({
    required this.answer,
    required this.user,
    required this.isMyQuest,
    super.key,
  });

  final Answer answer;
  final UserData user;
  final bool isMyQuest;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
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
                // 自分のクエストの場合かつ自分の答じゃない場合
                if (isMyQuest && !isMyAnswer)
                  ElevatedButton(
                    onPressed: (){
                      
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
