import 'package:flutter/material.dart';

class SelectPetScreen extends StatelessWidget {
  const SelectPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ペット選択画面',
            ),
          ],
        ),
      ),
    );
  }
}
