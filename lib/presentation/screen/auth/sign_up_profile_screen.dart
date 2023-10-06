import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/screen/auth/select_pet_screen.dart';

class SignUpProfile extends HookConsumerWidget {
  SignUpProfile({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    title: 'ユーザー名',
                    controller: nameController,
                    hintText: 'ユーザー名を入力してください',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomPicker(
                    options: prefectures,
                    title: '居住地',
                    controller: addressController,
                  ),
                ),
                const Gap(360),
                CustomButton(
                  text: 'ペット選択へ',
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute<SelectPetScreen>(
                        builder: (context) => const SelectPetScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
