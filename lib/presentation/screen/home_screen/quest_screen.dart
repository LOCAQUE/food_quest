import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:food_quest/presentation/screen/question_screen/question_screen.dart';

class QuestScreen extends StatelessWidget {
  const QuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const Gap(20), // 追加したボタンとの間隔を開けるためのスペース
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<QuestionScreen>(
                      builder: (context) => const QuestionScreen(),
                    ),
                  );
                },
                child: const Text('新しいページへ'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
