import 'package:flutter/material.dart';

class AskedListScreen extends StatelessWidget {
  const AskedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '自分がした質問一覧画面',
            ),
          ],
        ),
      ),
    );
  }
}
