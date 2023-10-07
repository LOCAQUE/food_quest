import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';

class SignUpProfile extends HookConsumerWidget {
  const SignUpProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 28),
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
                    controller: authNotifier.nameController,
                    hintText: 'ユーザー名を入力してください',
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: CustomPicker(
                    options: prefectures,
                    title: '居住地',
                    controller: authNotifier.addressController,
                  ),
                ),
                const Gap(330),
                CustomButton(
                  variant: ButtonVariant.primary,
                  text: 'ペット選択へ',
                  onPressed: () async {
                    await authNotifier.updateUserData().then((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const PetScreen(),
                        ),
                      );
                    });
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
