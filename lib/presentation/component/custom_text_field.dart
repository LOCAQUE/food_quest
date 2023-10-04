import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:food_quest/gen/colors.gen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.title,
    required this.controller,
    required this.hintText,
    this.isObscure = false,
    super.key,
  });

  final String title;
  final TextEditingController controller;
  final String hintText;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const Gap(4),
        BuildTextField(
          controller: controller,
          isObscure: isObscure,
          hintText: hintText,
        ),
      ],
    );
  }
}

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    required this.controller,
    required this.isObscure,
    required this.hintText,
    super.key,
  });

  final TextEditingController controller;
  final bool isObscure;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.textColor, //通常時
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.primaryColor, //入力中
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
