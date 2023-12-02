import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_screen.dart';
import 'package:food_quest/presentation/screen/top.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/notifier/auth_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/routes/app_router.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final isButtonEnabled = useValueListenable(authNotifier.isFormValid);

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            context.pushRoute(const TopRoute());
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
                const Gap(290),
                // メールアドレスとパスワードが入力されていない場合はボタンを押せないようにする
                if (isButtonEnabled)
                  CustomButton(
                    text: 'ログイン',
                    variant: ButtonVariant.primary,
                    onPressed: () async {
                      await authNotifier.signIn().then((_) {
                        context.pushRoute(const BottomNavigationRoute());
                      });
                    },
                  )
                else
                  CustomButton(
                    text: 'ログイン',
                    variant: ButtonVariant.disabled,
                    onPressed: () {},
                  ),

                const Gap(20),
                CustomButton(
                    text: 'はじめての方はこちら',
                    variant: ButtonVariant.text,
                    onPressed: () {
                      context.pushRoute(const SignUpRoute());
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
