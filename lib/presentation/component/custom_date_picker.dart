import 'package:flutter/material.dart';

import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:gap/gap.dart';

import 'package:food_quest/gen/colors.gen.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({
    required this.title,
    required this.controller,
    super.key,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
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
        BuildDatePicker(
          onDateConfirmed: (date) {
            controller.text = date.toString().split(' ')[0]; // 日付部分だけを取得
          },
        ),
        Container(
          height: 1,
          color: AppColor.textColor,
        ),
      ],
    );
  }
}

class BuildDatePicker extends StatelessWidget {
  const BuildDatePicker({required this.onDateConfirmed, super.key});
  final void Function(DateTime) onDateConfirmed;

  @override
  Widget build(BuildContext context) {
    final selectedDate = ValueNotifier<String>('');
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        ValueListenableBuilder<String>(
          valueListenable: selectedDate,
          builder: (context, value, child) {
            return TextButton(
              onPressed: () {
                DatePicker.showDatePicker(
                  context,
                  minTime: DateTime(1984),
                  maxTime: DateTime(2023, 12, 31),
                  onConfirm: (date) {
                    onDateConfirmed(date);
                    selectedDate.value =
                        date.toString().split(' ')[0]; // 日付部分だけを取得
                    print(selectedDate.value);
                  },
                  currentTime: DateTime.now(),
                  locale: LocaleType.jp,
                );
              },
              child: Row(
                children: [
                  if (value.isNotEmpty) ...[
                    Text(
                      value,
                      style: const TextStyle(color: AppColor.textColor),
                    ),
                  ] else ...[
                    const Text(
                      '日付を選択してください',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
