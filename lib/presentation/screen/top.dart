// アプリ起動時のトップ画面

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:gap/gap.dart';

import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            const Gap(110),
            CustomButton(
              variant: ButtonVariant.primary,
              text: 'はじめての方はこちら',
              onPressed: () {
                context.pushRoute(const SignUpRoute());
              },
            ),
            const Gap(32),
            CustomButton(
              text: 'ログイン',
              variant: ButtonVariant.secondary,
              onPressed: () {
                context.pushRoute(const SignInRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
