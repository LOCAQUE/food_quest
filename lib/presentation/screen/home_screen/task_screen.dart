import 'package:flutter/material.dart';

import 'package:food_quest/presentation/screen/home_screen/component/task_component.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            // TO-DO: DBから取得したデータを表示する
            child: TaskComponent(
              text: '質問を作成する',
              achievement: 4,
              target: 5,
            ),
          );
        },
      ),
    );
  }
}
