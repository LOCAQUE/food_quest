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
              onPressed: onPressed,
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
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
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
    required this.onPressed,
    required this.radius,
    super.key,
  });

  final String text;
  final double radius;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.disabledColor,
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
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColor.primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
      child: Text(text),
    );
  }
}
