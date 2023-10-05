import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_date_picker.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';

class SignUpProfile extends StatelessWidget {
  SignUpProfile({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  'プロフィール入力',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomTextField(
                    title: 'ニックネーム',
                    controller: nameController,
                    hintText: 'ニックネームを入力してください',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomTextField(
                    title: 'ユーザーネーム',
                    controller: userNameController,
                    hintText: '@username',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomPicker(
                    options: genderList,
                    title: '性別',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomDatePicker(
                    title: '生年月日',
                    controller: birthdayController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomPicker(
                    options: prefectures,
                    title: '居住地',
                  ),
                ),
                Gap(80),
                CustomButton(
                  text: 'ペット選択へ',
                  onPressed: () {},
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
