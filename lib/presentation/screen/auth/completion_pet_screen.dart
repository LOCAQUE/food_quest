import 'package:flutter/material.dart';

class CompletionPetScreen extends StatelessWidget {
  const CompletionPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ペット選択完了画面',
            ),
          ],
        ),
      ),
    );
  }
}
