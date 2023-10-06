import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class PetScreen extends HookConsumerWidget {
  const PetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const level = 1;
    const maxEXP = 150;
    const exp = 60;
    const heart = 50;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/castle.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            // 経験値ゲージ
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 15, // EXPのゲージを太くします
                          width: 270,
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(50),
                            value: exp / maxEXP, // 割合
                            backgroundColor: Colors.grey[300],
                            valueColor: const AlwaysStoppedAnimation(
                              AppColor.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColor.primaryColor,
                    child: Text(
                      '$level',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                '経験値: $exp/$maxEXP',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            // ハートゲージ
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 40),
                      SizedBox(
                        height: 10, // ハートのゲージを太くします
                        width: 250,
                        child: LinearProgressIndicator(
                          value: heart / 100,
                          borderRadius: BorderRadius.circular(50),
                          backgroundColor: Colors.grey[300],
                          valueColor: const AlwaysStoppedAnimation(
                            AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.favorite, color: Colors.red, size: 40),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Text(
                '満足度: $heart%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
