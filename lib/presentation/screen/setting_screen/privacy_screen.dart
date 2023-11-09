import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/setting_screen/component/section_component.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'プライバシーポリシー',
          style: TextStyle(
            fontSize: 15,
            color: AppColor.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: const [
          SectionWidget(
            title: '収集する情報',
            description:
                'ロカクエは、ユーザー登録、サービスの利用、アンケートへの回答など、サービス提供に関連して以下の情報を収集します。\n・ユーザー名\n・メールアドレス\n・ニックネーム',
          ),
          SectionWidget(
            title: '情報の利用目的',
            description: '収集した情報は、サービス提供のため、またマーケティング活動や広告の配信を目的として使用されます。',
          ),
          SectionWidget(
            title: '情報の第三者提供',
            description: 'ロカクエは、ユーザーから明示的な同意を得る場合を除き、個人情報を第三者に開示・提供することはありません。',
          ),
          SectionWidget(
            title: '情報の保護',
            description: 'ロカクエは、ユーザーの情報を適切に保護するための措置を講じます。',
          ),
          SectionWidget(
            title: 'クッキーとトラッキング技術',
            description: 'ロカクエは、サービスの提供や改善のため、クッキーやトラッキング技術を使用することがあります。',
          ),
          SectionWidget(
            title: '改定',
            description:
                'ロカクエは、必要に応じて本ポリシーの内容を改定することがあります。大幅な変更の際は、サイト上または直接ユーザーへの通知を行います。',
          ),
        ],
      ),
    );
  }
}
