import 'package:flutter/material.dart';

enum ButtonVariant {
  primary,
  outline,
  disabled,
}

class CustomButton extends StatelessWidget {
  final String text;
  final ButtonVariant variant;
  final Function onPressed;

  const CustomButton(
      {super.key,
      required this.text,
      required this.variant,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: variant == ButtonVariant.primary
          ? _buildPrimaryButton()
          : variant == ButtonVariant.outline
              ? _buildOutlineButton()
              : _buildDisabledButton(),
    );
  }

  Widget _buildPrimaryButton() {
    return ElevatedButton(
      onPressed: () async {
        await onPressed();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFFEE7D50),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          Color(0xFFFFFFFF),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildOutlineButton() {
    return OutlinedButton(
        onPressed: () async {
          await onPressed();
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xFFEE7D50),
          ),
          foregroundColor: const Color(0xFFEE7D50),
        ),
        child: Text(text));
  }

  Widget _buildDisabledButton() {
    return ElevatedButton(
      onPressed: null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFF8E8E93),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          Color(0xFFFFFFFF),
        ),
      ),
      child: Text(text),
    );
  }
}
