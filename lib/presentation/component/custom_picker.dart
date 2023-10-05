import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPicker extends StatefulWidget {
  const MyPicker({required this.options, super.key});
  final List<String> options;

  @override
  _CustomPicker createState() => _CustomPicker();
}

class _CustomPicker extends State<MyPicker> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CupertinoNavigationBar(
          middle: const Text('選択'),
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

class CustomPicker extends StatelessWidget {
  const CustomPicker({
    required this.options,
    super.key,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    final selectedOption = ValueNotifier<String>('');

    return Center(
      child: ValueListenableBuilder<String>(
        valueListenable: selectedOption,
        builder: (context, value, child) {
          return TextButton(
            onPressed: () async {
              final result = await showModalBottomSheet<String>(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext builder) {
                  return FractionallySizedBox(
                    heightFactor: 0.3, // 画面の30%の高さを使用
                    child: MyPicker(options: options),
                  );
                },
              );

              if (result != null && result.isNotEmpty) {
                selectedOption.value = result;
              }
            },
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (value.isNotEmpty) ...[
                  Text(
                    value,
                    style: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  const SizedBox(width: 8),
                ] else ...[
                  const Text(
                    '選択してください',
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
