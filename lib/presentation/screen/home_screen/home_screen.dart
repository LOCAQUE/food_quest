import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/presentation/screen/question_screen/question_screen.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(height: 50), // 画面上部の余白
            const TabBar(
              tabs: [
                Tab(text: 'Tab1'),
                Tab(text: 'Tab2'),
              ],
            ),
            Expanded(
              child: TabBarView(
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
                  const Center(child: Text('Tab2')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
