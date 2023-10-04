import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

enum ButtonVariant {
  primary,
  outline,
  disabled,
}

enum ButtonSize {
  small,
  large,
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.variant,
    required this.onPressed,
    this.size = ButtonSize.large,
    super.key,
  });
  final String text;
  final ButtonSize size;
  final ButtonVariant variant;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: () {
        switch (size) {
          case ButtonSize.small:
            return 80.0;
          case ButtonSize.large:
            return 300.0;
        }
      }(),
      height: () {
        switch (size) {
          case ButtonSize.small:
            return 25.0;
          case ButtonSize.large:
            return 50.0;
        }
      }(),
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
