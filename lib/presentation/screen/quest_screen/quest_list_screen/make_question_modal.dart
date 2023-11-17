// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:food_quest/presentation/%20ui_provier/filter_chip_list.dart';

import 'package:food_quest/presentation/component/filter_chip.dart';
import 'package:food_quest/presentation/component/image_selector.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/my_quest/notifier/my_quest_notifier.dart';
import 'package:food_quest/domain/application/notifier/question_task_notifier.dart';
import 'package:food_quest/domain/entity/constants/list.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_date_picker.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';

class MakeQuestionModal extends HookConsumerWidget {
  MakeQuestionModal({
    required this.context,
    this.content,
    this.questId,
    super.key,
  });

  final BuildContext context;
  final String? content;
  final int? questId;

  static Future<void> show({
    required BuildContext context,
    String? content,
    int? questId,
  }) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) => MakeQuestionModal(
        context: context,
        content: content,
        questId: questId,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionTaskNotifier =
        ref.watch(questionTaskNotifierProvider.notifier);
    final filterChipList = ref.watch(filterChipListProvider);

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              //閉じるボタン
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Text(
                      'キャンセル',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CustomButton(
                    text: '受注',
                    variant: ButtonVariant.primary,
                    size: ButtonSize.small,
                    onPressed: () async {
                      await questionTaskNotifier.createQuest().then((value) {
                        Navigator.of(context).pop();
                      });
                      // providerを強制破棄させる
                      ref.refresh(myQuestNotifierProvider);
                      return;
                    },
                  ),
                ],
              ),
              const Gap(16),
              Row(
                children: [
                  Wrap(
                    spacing: 8,
                    children: [
                      ...questChipList
                          .map((title) => FliterChipWidget(title: title)),
                    ],
                  ),
                ],
              ),
              const Gap(16),
              CustomPicker(
                title: 'エリア',
                options: prefectures,
                controller: questionTaskNotifier.prefectureController,
              ),
              const Gap(16),
              CustomDatePicker(
                title: '締切日',
                controller: questionTaskNotifier.deadLineController,
              ),
              const Gap(16),
              if (filterChipList.contains('予算')) const BadgetWidget(),
              if (filterChipList.contains('画像')) const ImageSelectWidget(),
              const Gap(8),
              TextField(
                controller: questionTaskNotifier.contentController,
                maxLines: 15,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ), // 四角い枠を表示
                  labelText: '入力してください', // ラベルテキスト
                ),
                maxLength: 255, // 最大文字数を制限
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//予算
class BadgetWidget extends HookConsumerWidget {
  const BadgetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionTaskNotifier =
        ref.read(questionTaskNotifierProvider.notifier);

    return Row(
      children: [
        CustomPicker(
          title: '最低予算',
          options: priceList,
          controller: questionTaskNotifier.minimumBudgetController,
        ),
        const Gap(8),
        const Text('~'),
        const Gap(8),
        CustomPicker(
          title: '最大予算',
          options: priceList,
          controller: questionTaskNotifier.maximumBudgetController,
        ),
      ],
    );
  }
}
