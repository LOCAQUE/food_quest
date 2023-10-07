import 'package:flutter/material.dart';


import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final currentUser =
    ref.watch(authNotifierProvider.select((state) => state.currentUser));


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('設定画面'),
            CustomButton(
              text: '確認',
              onPressed: () async {
                print(currentUser);
              },
              variant: ButtonVariant.primary,
            ),
            CustomButton(
              text: 'ログアウト',
              onPressed: () async {
                await authNotifier.logout();
              },
              variant: ButtonVariant.primary,
            ),
          ],
        ),
      ),
    );
  }
}