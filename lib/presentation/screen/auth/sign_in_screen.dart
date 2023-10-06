import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_profile_screen.dart';

import '../bottom_navigation/bottom_navigation_screen.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF5E0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(10),
                const Text(
                  'おかえりなさい',
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
                const Gap(330),
                // メールアドレスとパスワードが入力されていない場合はボタンを押せないようにする
                if (authNotifier.emailController.text.isEmpty &&
                    authNotifier.passwordController.text.isEmpty) ...[
                  CustomButton(
                    text: 'ログイン',
                    variant: ButtonVariant.disabled,
                    onPressed: () {},
                  ),
                ] else ...[
                  CustomButton(
                    text: 'ログイン',
                    onPressed: () async {
                      await authNotifier.signIn().then((_) {
                        Navigator.push(
                          context,
                          MaterialPageRoute<BottomNavigationScreen>(
                            builder: (context) =>
                                const BottomNavigationScreen(),
                          ),
                        );
                      });
                    },
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
