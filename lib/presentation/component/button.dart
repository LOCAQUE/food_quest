import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

enum ButtonVariant {
  primary,
  outline,
  disabled,
}

Color _buttonColor(ButtonVariant style) {
  switch (style) {
    case ButtonVariant.primary:
      return AppColor.primaryColor;
    case ButtonVariant.outline:
      return AppColor.primaryColor;
    case ButtonVariant.disabled:
      return AppColor.disabledColor;
  }
}

enum ButtonSize {
  small,
  large,
}

double _buttonWidth(ButtonSize style) {
  switch (style) {
    case ButtonSize.small:
      return 80;
    case ButtonSize.large:
      return 300;
  }
}

double _buttonHeight(ButtonSize style) {
  switch (style) {
    case ButtonSize.small:
      return 25;
    case ButtonSize.large:
      return 50;
  }
}

enum ButtonRadius {
  square,
  full,
}

double _buttonRadius(ButtonRadius style) {
  switch (style) {
    case ButtonRadius.square:
      return 10;
    case ButtonRadius.full:
      return 100;
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.variant,
    required this.onPressed,
    this.size = ButtonSize.large,
    this.buttonRadius = ButtonRadius.full,
    super.key,
  });

  final String text;
  final ButtonSize size;
  final ButtonVariant variant;
  final ButtonRadius buttonRadius;
  final dynamic Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final radius = _buttonRadius(buttonRadius);
    final width = _buttonWidth(size);
    final height = _buttonHeight(size);

    return SizedBox(
      width: width,
      height: height,
      child: () {
        switch (variant) {
          case ButtonVariant.primary:
            return BuildPrimaryButton(
              text: text,
              radius: radius,
              onPressed: onPressed,
            );
          case ButtonVariant.outline:
            return BuildOutlineButton(
              text: text,
              radius: radius,
              onPressed: onPressed,
            );
          case ButtonVariant.disabled:
            return BuildDisabledButton(
              text: text,
              radius: radius,
            );
        }
      }(),
    );
  }
}

class BuildPrimaryButton extends StatelessWidget {
  const BuildPrimaryButton({
    required this.text,
    required this.onPressed,
    required this.radius,
    super.key,
  });

  final String text;
  final double radius;
  final dynamic Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _buttonColor(ButtonVariant.primary);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(text),
    );
  }
}

class BuildDisabledButton extends StatelessWidget {
  const BuildDisabledButton({
    required this.text,
    required this.radius,
    super.key,
  });

  final String text;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _buttonColor(ButtonVariant.primary);
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: AppColor.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
      child: Text(text),
    );
  }
}

class BuildOutlineButton extends StatelessWidget {
  const BuildOutlineButton({
    required this.text,
    required this.onPressed,
    required this.radius,
    super.key,
  });

  final String text;
  final double radius;
  final dynamic Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _buttonColor(ButtonVariant.outline);

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: backgroundColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
      child: Text(text),
    );
  }
}
