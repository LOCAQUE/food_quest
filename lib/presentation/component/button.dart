import 'package:flutter/material.dart';

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
      onPressed: () async {
        onPressed;
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFFEE7D50),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFFFFFFFF),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildOutlineButton() {
    return OutlinedButton(
      onPressed: () async {
        onPressed;
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Color(0xFFEE7D50),
        ),
        foregroundColor: const Color(0xFFEE7D50),
      ),
      child: Text(text),
    );
  }

  Widget _buildDisabledButton() {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFF8E8E93),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFFFFFFFF),
        ),
      ),
      child: Text(text),
    );
  }
}
