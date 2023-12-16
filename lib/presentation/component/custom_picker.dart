import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class CustomPicker extends HookConsumerWidget {
  const CustomPicker({
    required this.options,
    required this.controller,
    this.title,
    this.noTitle,
    super.key,
  });

  final String? title;
  final List<String> options;
  final TextEditingController controller;
  final bool? noTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //controller.text を optionsの最初をデフォルトに設定
    final selectedOption = useState(options.first);

    if (selectedOption.value != '') {
      controller.text = selectedOption.value;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (noTitle != null)
          Column(
            children: [
              Text(
                title ?? '',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const Gap(4),
            ],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end, // 画面右端に寄せる
          children: [
            TextButton(
              onPressed: () {
                showModalBottomSheet<String>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext builder) {
                    return FractionallySizedBox(
                      heightFactor: 0.3, // 画面の30%の高さを使用
                      child: Picker(
                        options: options,
                        title: title ?? '',
                        controller: controller,
                        selectedOption: selectedOption,
                      ),
                    );
                  },
                );
              },
              child: Text(
                selectedOption.value != '' ? selectedOption.value : '選択してください',
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColor.textColor,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: AppColor.textColor,
            ),
          ],
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

class Picker extends HookConsumerWidget {
  const Picker({
    required this.options,
    required this.title,
    required this.controller,
    required this.selectedOption,
    super.key,
  });

  final List<String> options;
  final String title;
  final TextEditingController controller;
  final ValueNotifier<String> selectedOption;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CupertinoNavigationBar(
          middle: Text(title),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('完了'),
          ),
        ),
        SizedBox(
          height: 200, // ドラムロールの高さを調整
          child: CupertinoPicker(
            itemExtent: 40, // 各アイテムの高さを調整
            onSelectedItemChanged: (int index) {
              selectedOption.value = options[index];
              controller.text = selectedOption.value;
            },
            children: List<Widget>.generate(options.length, (int index) {
              return Center(
                child: Text(
                  options[index],
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
