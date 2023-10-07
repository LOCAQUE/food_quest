import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Column(
            children: [
              Gap(20), // 追加したボタンとの間隔を開けるためのスペース
              Text('タスク一覧'),
            ],
          ),
        ],
      ),
    );
  }
}