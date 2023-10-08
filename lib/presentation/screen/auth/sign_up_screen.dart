import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_profile_screen.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final isButtonEnabled = useValueListenable(authNotifier.isFormValid);
    final emailError = ref.watch(authNotifierProvider).emailError;
    final passwordError = ref.watch(authNotifierProvider).passwordError;

    return Scaffold(
      appBar: AppBar(
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
                if (emailError != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 20),
                    child: Text(
                      emailError,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
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
                if (passwordError != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 20),
                    child: Text(
                      passwordError,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                const Gap(250),
                // linterによる警告を抑制するために、if文で分岐させています。
                if (isButtonEnabled)
                  CustomButton(
                    variant: ButtonVariant.primary,
                    text: 'はじめる',
                    onPressed: () async {
                      if (emailError == null && passwordError == null) {
                        final isSuccess = await authNotifier.signUp();
                        if (isSuccess &&
                            emailError == null &&
                            passwordError == null) {
                          await Navigator.push(
                            context,
                            MaterialPageRoute<SignUpProfile>(
                              builder: (context) => const SignUpProfile(),
                            ),
                          );
                        }
                      }
                    },
                  )
                else
                  CustomButton(
                    text: 'はじめる',
                    variant: ButtonVariant.disabled,
                    onPressed: () {},
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
