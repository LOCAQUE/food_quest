import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

enum ButtonVariant {
  primary,
  outline,
  disabled,
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.variant,
    required this.onPressed,
    super.key,
  });
  final String text;
  final ButtonVariant variant;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: () {
        switch (variant) {
          case ButtonVariant.primary:
            return _buildPrimaryButton();
          case ButtonVariant.outline:
            return _buildOutlineButton();
          case ButtonVariant.disabled:
            return _buildDisabledButton();
        }
      }(),
    );
  }

  Widget _buildPrimaryButton() {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColor.primaryColor,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColor.white,
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildOutlineButton() {
    return OutlinedButton(
      onPressed: null,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColor.primaryColor,
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildDisabledButton() {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          AppColor.disabledColor,
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColor.white,
        ),
      ),
      child: Text(text),
    );
  }
}
