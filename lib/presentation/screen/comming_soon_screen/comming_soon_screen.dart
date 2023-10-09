// comming sooonの画面

import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Comming Soon',
          style: TextStyle(
            fontSize: 15,
            color: AppColor.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: const [Text('Comming Soon')],
      ),
    );
  }
}
