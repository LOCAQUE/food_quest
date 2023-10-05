import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:food_quest/gen/colors.gen.dart';

class CustomPicker extends StatelessWidget {
  const CustomPicker({
    required this.title,
    required this.options,
    super.key,
  });

  final String title;
  final List<String> options;

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
        Row(
          children: [
            Expanded(
              child: BuildPicker(
                options: options,
                title: title,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: AppColor.textColor,
            ),
          ],
        ),
        Container(
          height: 1,
          color: AppColor.textColor,
        ),
      ],
    );
  }
}

class Picker extends StatefulWidget {
  const Picker({required this.options, required this.title, super.key});
  final List<String> options;
  final String title;

  @override
  PickerState createState() => PickerState();
}

class PickerState extends State<Picker> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CupertinoNavigationBar(
          middle: Text(widget.title),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.of(context).pop(selectedOption);
            },
            child: const Text('完了'),
          ),
        ),
        SizedBox(
          height: 200, // ドラムロールの高さを調整
          child: CupertinoPicker(
            itemExtent: 40, // 各アイテムの高さを調整
            onSelectedItemChanged: (int index) {
              setState(() {
                selectedOption = widget.options[index];
              });
            },
            children: List<Widget>.generate(widget.options.length, (int index) {
              return Center(
                child: Text(
                  widget.options[index],
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

class BuildPicker extends StatelessWidget {
  const BuildPicker({
    required this.options,
    required this.title,
    super.key,
  });

  final List<String> options;
  final String title;

  @override
  Widget build(BuildContext context) {
    final selectedOption = ValueNotifier<String>('');

    return Center(
      child: ValueListenableBuilder<String>(
        valueListenable: selectedOption,
        builder: (context, value, child) {
          return SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () async {
                final result = await showModalBottomSheet<String>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext builder) {
                    return FractionallySizedBox(
                      heightFactor: 0.3, // 画面の30%の高さを使用
                      child: Picker(options: options, title: title),
                    );
                  },
                );

                if (result != null && result.isNotEmpty) {
                  selectedOption.value = result;
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (value.isNotEmpty) ...[
                    Text(
                      value,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColor.textColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                  ] else ...[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '選択してください',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColor.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
