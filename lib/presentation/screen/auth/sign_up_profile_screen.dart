import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/domain/notifier/auth_notifier.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/screen/auth/select_pet_screen.dart';

@RoutePage()
class SignUpProfileScreen extends HookConsumerWidget {
  const SignUpProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Gap(120),
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
                    text: 'ペット選択へ',
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute<SelectPetScreen>(
                          builder: (context) => const SelectPetScreen(),
                        ),
                      );
                    },
                    variant: ButtonVariant.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
