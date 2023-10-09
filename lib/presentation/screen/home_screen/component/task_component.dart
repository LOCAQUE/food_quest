import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/task.dart';
import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/gen/assets.gen.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';

class TaskComponent extends HookConsumerWidget {
  const TaskComponent({
    required this.tasks,
    required this.taskUser,
    super.key,
  });

  final Task tasks;
  final TaskResponse taskUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questNotifier = ref.watch(questionTaskNotifierProvider.notifier);

    final questAchievement = ref.watch(
      questionTaskNotifierProvider.select((state) => state.questAchievement),
    );
    final answerAchievement = ref.watch(
      questionTaskNotifierProvider.select((state) => state.answerAchievement),
    );
    final bestAnswerAchievement = ref.watch(
      questionTaskNotifierProvider
          .select((state) => state.bestAnswerAchievement),
    );
    final isDone = useState(false);
    final currentAchievement = useState(0);
    final isPushButton = useState(false);

    switch (tasks.categoryNumber) {
      case 0:
        currentAchievement.value = questAchievement;
        isDone.value = tasks.targetNumber == questAchievement;
      case 1:
        currentAchievement.value = answerAchievement;
        isDone.value = tasks.targetNumber == answerAchievement;
      case 2:
        currentAchievement.value = bestAnswerAchievement;
        isDone.value = tasks.targetNumber == bestAnswerAchievement;
      default:
        // カテゴリー番号が0、1、2以外の場合のデフォルトの処理
        isDone.value = false; // または適切な初期値を設定
        break;
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          SizedBox(
            width: 310,
            height: 95,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tasks.task),
                      if (isDone.value)
                        CustomButton(
                          text: '受取',
                          variant: ButtonVariant.outline,
                          onPressed: () async {
                            isPushButton.value = true;
                            await questNotifier.updateIsDone(taskUser.id);
                          },
                          size: ButtonSize.small,
                        )
                      else
                        const SizedBox(),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 16, // EXPのゲージを太くします
                              child: LinearProgressIndicator(
                                borderRadius: BorderRadius.circular(50),
                                value: currentAchievement.value /
                                    tasks.targetNumber,
                                backgroundColor: Colors.grey[300],
                                valueColor: const AlwaysStoppedAnimation(
                                  AppColor.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${currentAchievement.value} / ${tasks.targetNumber}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.7,
            child: isPushButton.value
                ? SizedBox(
                    width: 95,
                    height: 95,
                    child: Assets.images.taskClear.image(),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
