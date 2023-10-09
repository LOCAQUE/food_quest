import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/setting_screen/component/section_component.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

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
            title: '適用',
            description:
                '本規約は、ロカクエ（以下、「本サービス」といいます。）の提供条件及び本サービスの利用に関する当社と登録ユーザーの権利義務関係を規定するものです。',
          ),
          SectionWidget(
            title: '定義',
            description:
                '「ユーザー」とは、本サービスの利用を希望する全ての利用者を意味します。「登録ユーザー」とは、ユーザー登録が完了した者を意味します。',
          ),
          SectionWidget(
            title: 'ユーザー登録',
            description: 'ユーザー登録は、本サービス上で要求される情報を提供し、ユーザー登録を完了するものとします。',
          ),
          SectionWidget(
            title: 'サービスの内容',
            description: 'ユーザーは、ロカクエで提供される各種サービスを、本規約の定めに従って利用することができます。',
          ),
          SectionWidget(
            title: '登録',
            description: 'ユーザーは、ロカクエの利用にあたり、所定の登録手続きを行い、アカウントを取得する必要があります。',
          ),
          SectionWidget(
            title: '禁止事項',
            description:
                'ユーザーは、以下の行為をしてはなりません。\n\n・法令または公序良俗に違反する行為\n・犯罪行為に関連する行為\n・他のユーザーの情報を不正に取得する行為\n・他のユーザーに成りすます行為\n・ロカクエのサービスの運営を妨害する行為',
          ),
          SectionWidget(
            title: '退会と停止',
            description:
                'ロカクエは、ユーザーが本規約のいずれかの条項に違反した場合、予告なくアカウントの使用を一時的に停止することができます。',
          ),
          SectionWidget(
            title: '免責事項',
            description: 'ロカクエは、サービスの提供に最大限の努力をしますが、サービスの内容を保証するものではありません。',
          ),
        ],
      ),
    );
  }
}
