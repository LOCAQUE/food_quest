import 'package:flutter/material.dart';

class AnsweredQuestListScreen extends StatelessWidget {
  const AnsweredQuestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '自分が回答した質問一覧画面',
            ),
          ],
        ),
      ),
    );
  }
}
