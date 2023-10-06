import 'package:flutter/material.dart';
import 'package:food_quest/domain/notifier/make_question_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_date_picker.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/entity/list.dart';

class MakeQuestionModal extends HookConsumerWidget {
  const MakeQuestionModal({super.key});

  static Future<void> show(BuildContext context) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColor.firstColor,
      builder: (context) => const MakeQuestionModal(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final makeQuestionNotifier =
        ref.watch(makeQuestionNotifierProvider.notifier);

    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          children: [
            //閉じるボタン
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text(
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
                    await makeQuestionNotifier.createQuest();
                  },
                ),
              ],
            ),
            const Gap(32),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomPicker(
                  title: '最低予算',
                  options: priceList,
                  controller: makeQuestionNotifier.minimumBudgetController,
                ),
                Gap(8),
                Text('~'),
                Gap(8),
                CustomPicker(
                  title: '最大予算',
                  options: priceList,
                  controller: makeQuestionNotifier.maximumBudgetController,
                ),
              ],
            ),
            const Gap(16),
            CustomPicker(
                title: 'エリア',
                options: prefectures,
                controller: makeQuestionNotifier.prefectureController),
            const Gap(16),
            CustomDatePicker(
                title: '締切日',
                controller: makeQuestionNotifier.deadLineController),
            const Gap(24),
            TextField(
              controller: makeQuestionNotifier.contentController,
              maxLines: 15,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ), // 四角い枠を表示
                labelText: '入力してください', // ラベルテキスト
              ),
              maxLength: 255, // 最大文字数を制限
            )
          ],
        ),
      ),
    ]);
  }
}
