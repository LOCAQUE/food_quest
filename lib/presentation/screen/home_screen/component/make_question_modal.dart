import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_date_picker.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';

class MakeQuestionModal extends HookConsumerWidget {
  MakeQuestionModal({
    required this.context,
    required this.isQuestion,
    this.content,
    super.key,
  });

  final BuildContext context;
  final bool isQuestion;
  String? content;


  static Future<void> show({
    required BuildContext context,
    required bool isQuestion,
    String? content,
  }) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColor.firstColor,
      builder: (context) => MakeQuestionModal(
        context: context,
        isQuestion: isQuestion,
        content: content,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionTaskNotifier =
        ref.watch(questionTaskNotifierProvider.notifier);

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
                    },
                  ),
                ],
              ),
              const Gap(24),
              if (!isQuestion) ExpandableText(content: content ?? ''),
              Row(
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
              ),
              if (isQuestion) const Gap(16),
              if (isQuestion)
                CustomPicker(
                  title: 'エリア',
                  options: prefectures,
                  controller: questionTaskNotifier.prefectureController,
                ),
              if (isQuestion) const Gap(16),
              if (isQuestion)
                CustomDatePicker(
                  title: '締切日',
                  controller: questionTaskNotifier.deadLineController,
                ),
              const Gap(24),
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

class ExpandableText extends HookConsumerWidget {
  const ExpandableText({required this.content, super.key});

  final String content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = useState(false);
    const maxLength = 80;

    return Column(
      children: [
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '質問内容',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const Gap(8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                isExpanded.value
                    ? content
                    : (content.length > maxLength
                        ? '${content.substring(0, maxLength)}...'
                        : content),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        if (content.length > maxLength)
          IconButton(
            onPressed: () {
              isExpanded.value = !isExpanded.value;
            },
            icon: isExpanded.value
                ? const Icon(Icons.keyboard_arrow_up)
                : const Icon(Icons.keyboard_arrow_down),
          ),
        const Gap(16),
      ],
    );
  }
}
