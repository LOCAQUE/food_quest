import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/presentation/screen/auth/sign_in_screen.dart';
import 'package:food_quest/presentation/screen/top.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/notifier/auth_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_profile_screen.dart';

@RoutePage()
class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

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
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const TopScreen(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  const Gap(10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Align(
                        alignment: Alignment(-0.5, 0),
                        child: Container(
                            width: 160,
                            height: 160,
                            child: Image.asset('assets/images/logo.png')),
                      ),
                      const Positioned(
                          top: 80,
                          left: 155,
                          child: Text(
                            'へようこそ',
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),

                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: CustomTextField(
                      title: 'メールアドレス',
                      controller: authNotifier.emailController,
                      hintText: 'メールアドレスを入力してください',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: CustomTextField(
                      title: 'パスワード',
                      isObscure: true,
                      controller: authNotifier.passwordController,
                      hintText: 'パスワードを入力してください',
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
                  const Gap(140),
                  // linterによる警告を抑制するために、if文で分岐させています。
                  if (isButtonEnabled)
                    CustomButton(
                      variant: ButtonVariant.primary,
                      text: '次へ',
                      onPressed: () async {
                        await authNotifier.signUp().then((_) {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => const SignUpProfileScreen(),
                            ),
                          );
                        });
                      },
                    )
                  else
                    CustomButton(
                      text: '次へ',
                      variant: ButtonVariant.disabled,
                      onPressed: () {},
                    ),
                  const Gap(20),
                  CustomButton(
                      text: 'アカウントをお持ちの方はこちら',
                      variant: ButtonVariant.text,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const SignInScreen(),
                          ),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
