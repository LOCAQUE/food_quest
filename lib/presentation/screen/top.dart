// アプリ起動時のトップ画面

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/screen/auth/sign_in_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_screen.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TO-DO: タイトルの修正
            const Text(
              'ロカクエ',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(260),
            CustomButton(
              variant: ButtonVariant.primary,
              text: '新規登録はこちら',
              buttonRadius: ButtonRadius.square,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<SignUpScreen>(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
            ),
            const Gap(30),
            CustomButton(
              text: 'ログイン',
              variant: ButtonVariant.outline,
              buttonRadius: ButtonRadius.square,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<SignInScreen>(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
            ),
            const Gap(26),
            SizedBox(
              width: 327,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1, // 棒線の高さを設定
                    color: AppColor.disabledColor, // 棒線の色を設定
                    width: 118, // 棒線の幅を設定
                  ),
                  const Text(
                    ' OR ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.disabledColor,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    height: 1, // 棒線の高さを設定
                    color: AppColor.disabledColor, // 棒線の色を設定
                    width: 118, // 棒線の幅を設定
                  ),
                ],
              ),
            ),
            const Gap(26),
            // TO-DO: Googleログインの実装
            CustomButton(
              text: 'Googleでログイン',
              variant: ButtonVariant.outline,
              buttonRadius: ButtonRadius.square,
              onPressed: () {},
            ),
            const Gap(15),
          ],
        ),
      ),
    );
  }
}
