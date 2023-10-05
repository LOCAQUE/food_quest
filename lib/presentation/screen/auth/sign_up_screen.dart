import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(10),
                const Text(
                  '新規登録',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    title: 'メールアドレス',
                    controller: authNotifier.emailController,
                    hintText: 'emailを入力してください',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    title: 'パスワード',
                    isObscure: true,
                    controller: authNotifier.passwordController,
                    hintText: 'passwordを入力してください',
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '8文字以上12文字以下の半角英数字',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    title: '名前',
                    isObscure: true,
                    controller: authNotifier.nameController,
                    hintText: '名前を入力してください',
                  ),
                ),
                const Gap(280),
                CustomButton(
                  text: 'はじめる',
                  onPressed: () async {
                    await authNotifier.signUp();
                  },
                  variant: ButtonVariant.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
