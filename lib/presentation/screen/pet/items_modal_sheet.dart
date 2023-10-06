// アイテム一覧のモーダルシート

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class ItemsModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // この数は要素の数によります
        itemBuilder: (context, index) {
          return SizedBox(
            width: 100, // 各要素の幅を設定
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColor.primaryColor,
                    child: Text(
                      '$index',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Text('Item $index'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
