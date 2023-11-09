import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/mon_choice_notifier.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class CompletionPetScreen extends HookConsumerWidget {
  const CompletionPetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monchoicenotifier = ref.watch(monchoiceNotifierProvider.notifier);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '君に決めた！',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 80),
                Image.asset(
                  'assets/images/test.png',
                  height: 300,
                  width: 300,
                ),
                const Text(
                  'たくさんクエストをクリアして\n(モンスター名)を育てよう！',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(100),
            child: CustomButton(
              text: 'ロカクエをはじめる',
              variant: ButtonVariant.primary,
              onPressed: () {
                context.pushRoute(const BottomNavigationRoute());
              },
            ),
          ),
        ],
      ),
    );
  }
}
