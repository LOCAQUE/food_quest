import 'package:flutter/material.dart';

import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class CustomDatePicker extends HookConsumerWidget {
  const CustomDatePicker({
    required this.title,
    required this.controller,
    super.key,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //useStateを使うだけで画面自動で切り替わる reactと一緒
    //使い方は 変数名.value = 代入 ってしてデータ入れる
    final dateValue = useState('');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const Gap(4),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              DatePicker.showDatePicker(
                context,
                minTime: DateTime(1984),
                maxTime: DateTime(2023, 12, 31),
                onConfirm: (date) {
                  dateValue.value = date.toString().split(' ')[0]; // 日付部分だけを取得
                  controller.text =
                      date.toIso8601String(); //supabaseに入れるためTimeStamp型にする
                },
                currentTime: DateTime.now(),
                locale: LocaleType.jp,
              );
            },
            child: Text(
              dateValue.value != '' ? dateValue.value : '日付を選択してください',
              style: const TextStyle(
                color: AppColor.textColor,
              ),
            ),
          ),
        ),
        const Divider(
          height: 2,
          thickness: 1,
          color: AppColor.textColor,
        ),
      ],
    );
  }
}
