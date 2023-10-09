// アイテム一覧のモーダルシート

import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const itemList = [
  'assets/images/takoyaki1.png',
  'assets/images/takoyaki1.png',
  'assets/images/takoyaki1.png',
  'assets/images/takoyakiAndkushi.png',
  'assets/images/tutenkaku.png',
];

class ItemsModalSheet extends HookConsumerWidget {
  const ItemsModalSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemList.length, // この数は要素の数によります
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Column(
            children: [
              SizedBox(
                width: 100, // 各要素の幅を設定
                height: 100,
                child: Center(
                  child: SizedBox(
                    width: 75,
                    height: 75,
                    child: Image.asset(item),
                  ),
                ),
              ),
              const Gap(15)
            ],
          );
        },
      ),
    );
  }
}
