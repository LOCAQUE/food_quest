import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/screen/question_screen/question_screen.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          const Gap(40),
          ElevatedButton(
            onPressed: () async {
              await authNotifier.logout();
            },
            child: const Text('ログアウト'),
          ),
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
    );
  }
}
