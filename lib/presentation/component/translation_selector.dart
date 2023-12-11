import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class TranslationSelector extends HookConsumerWidget {
  const TranslationSelector({
    required this.options,
    required this.controller,
    super.key,
  });

  final Map<String, String> options;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //controller.text を optionsの最初をデフォルトに設定
    final selectedOption = useState(controller.text);

    return TextButton(
      onPressed: () {
        showModalBottomSheet<String>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext builder) {
            return FractionallySizedBox(
              heightFactor: 0.3, // 画面の30%の高さを使用
              child: Picker(
                title: '翻訳先を選択してください',
                options: options,
                controller: controller,
                selectedOption: selectedOption,
              ),
            );
          },
        );
      },
      child: Text(
        selectedOption.value == 'ja' ? '日本語' : '英語',
        style: const TextStyle(
          fontSize: 16,
          color: AppColor.textColor,
        ),
      ),
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

  final Map<String, String> options;
  final String title;
  final TextEditingController controller;
  final ValueNotifier<String> selectedOption;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Column(
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
                scrollController: FixedExtentScrollController(
                  initialItem: selectedOption.value == 'ja'
                      ? 1
                      : 0,
                ),
                itemExtent: 40, // 各アイテムの高さを調整
                onSelectedItemChanged: (int index) {
                  selectedOption.value = options.values.toList()[index];
                  controller.text = selectedOption.value;
                },
                children: List<Widget>.generate(options.length, (int index) {
                  return Center(
                    child: Text(
                      options.keys.toList()[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
