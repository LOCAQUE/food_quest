import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/answer/notifier/answer_notifier.dart';
import 'package:food_quest/domain/application/quest_list/notifier/quest_list_notifier.dart';
import 'package:food_quest/presentation/%20ui_provier/filter_chip_list.dart';
import 'package:food_quest/presentation/component/filter_chip.dart';
import 'package:food_quest/presentation/component/image_selector.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/constants/list.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';

class MakeAnswerModal extends HookConsumerWidget {
  MakeAnswerModal({
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
      backgroundColor: AppColor.firstColor,
      builder: (context) => MakeAnswerModal(
        context: context,
        content: content,
        questId: questId,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answerNotifier = ref.watch(answerNotiierProvider.notifier);
    final filterChipList = ref.watch(filterChipListProvider);
    final answerContent = useTextEditingController();
    final minimumBudget = useTextEditingController();
    final maximumBudget = useTextEditingController();

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
                      await answerNotifier
                          .createAnswer(
                        questId: questId!,
                        answerContent: answerContent.text,
                        minimumBudget: minimumBudget.text,
                        maximumBudget: maximumBudget.text,
                      )
                          .then((value) {
                        Navigator.of(context).pop();
                      });
                      // providerを強制破棄させる
                      ref.refresh(questListNotifierProvider);
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
              ExpandableText(content: content ?? ''),
              if (filterChipList.contains('予算'))
                Column(
                  children: [
                    Row(
                      children: [
                        CustomPicker(
                          title: '最低予算',
                          options: priceList,
                          controller: minimumBudget,
                        ),
                        const Gap(8),
                        const Text('~'),
                        const Gap(8),
                        CustomPicker(
                          title: '最大予算',
                          options: priceList,
                          controller: maximumBudget,
                        ),
                      ],
                    ),
                    const Gap(8),
                  ],
                ),
              if (filterChipList.contains('画像')) const ImageSelectWidget(),
              const Gap(8),
              TextField(
                controller: answerContent,
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
        const Gap(20),
      ],
    );
  }
}
