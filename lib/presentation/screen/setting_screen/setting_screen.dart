import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/screen/setting_screen/component/link_component.dart';
import 'package:food_quest/presentation/screen/setting_screen/privacy_screen.dart';
import 'package:food_quest/presentation/screen/setting_screen/terms_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingScreen extends HookConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    void launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('設定', style: TextStyle(fontSize: 20)),
            const Gap(25),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Gap(30),
                      Text(
                        '規約',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  LinkComponent(
                    text: 'プライバシーポリシー',
                    onPressed: () {
                      // プライバシーポリシー画面へ遷移
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PrivacyPolicyScreen(),
                        ),
                      );
                    },
                  ),
                  LinkComponent(
                    text: '利用規約',
                    onPressed: () {
                      // 利用規約画面へ遷移
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TermsOfServiceScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Gap(25),
            // SizedBox(
            //   child: Column(
            //     children: [
            //       const Row(
            //         children: [
            //           Gap(30),
            //           Text(
            //             '通知',
            //             style: TextStyle(
            //               fontSize: 15,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //       LinkComponent(text: '通知設定', onPressed: () {}),
            //     ],
            //   ),
            // ),
            const Gap(25),
            SizedBox(
              child: Column(
                children: [
                  const Row(
                    children: [
                      Gap(30),
                      Text(
                        'ヘルプ・フィードバック',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  LinkComponent(
                      text: 'お問い合わせ',
                      onPressed: () {
                        // 外部リンクへ遷移する
                        // https://forms.gle/WJvGtCYNUbPdmHHG9
                        launchURL("https://forms.gle/WJvGtCYNUbPdmHHG9");
                      }),
                  LinkComponent(
                      text: 'フィードバック',
                      onPressed: () {
                        // https://forms.gle/L3Fnmd8Joi6UEpUc8
                        launchURL("https://forms.gle/L3Fnmd8Joi6UEpUc8");
                      }),
                ],
              ),
            ),
            const Gap(35),
            CustomButton(
              text: 'ログアウト',
              onPressed: () async {
                await authNotifier.logout();
              },
              variant: ButtonVariant.outline,
            ),
          ],
        ),
      ),
    );
  }
}
