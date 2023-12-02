import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

enum ButtonVariant {
  primary,
  outline,
  disabled,
  secondary,
}

enum ButtonSize { small, large, extraSmall }

enum ButtonRadius {
  square,
  full,
}

enum ButtonShadow {
  shadow,
  noShadow,
}

Color _buttonColor(ButtonVariant style) {
  switch (style) {
    case ButtonVariant.primary:
      return AppColor.primaryColor;
    case ButtonVariant.outline:
      return AppColor.primaryColor;
    case ButtonVariant.disabled:
      return AppColor.disabledColor;
    case ButtonVariant.secondary:
      return AppColor.white;
  }
}

double _buttonWidth(ButtonSize style) {
  switch (style) {
    case ButtonSize.extraSmall:
      return 58;
    case ButtonSize.small:
      return 80;
    case ButtonSize.large:
      return 300;
  }
}

double _buttonHeight(ButtonSize style) {
  switch (style) {
    case ButtonSize.extraSmall:
      return 16;
    case ButtonSize.small:
      return 25;
    case ButtonSize.large:
      return 50;
  }
}

double _buttonRadius(ButtonRadius style) {
  switch (style) {
    case ButtonRadius.square:
      return 10;
    case ButtonRadius.full:
      return 999;
  }
}

double _buttonTextSize(ButtonSize style) {
  switch (style) {
    case ButtonSize.extraSmall:
      return 10;
    case ButtonSize.small:
      return 12;
    case ButtonSize.large:
      return 17;
  }
}

double _buttonShadow(ButtonShadow style) {
  switch (style) {
    case ButtonShadow.shadow:
      return 3;
    case ButtonShadow.noShadow:
      return 0;
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.variant,
    required this.onPressed,
    this.size = ButtonSize.large,
    this.buttonRadius = ButtonRadius.full,
    this.buttonShadow = true,
    super.key,
  });

  final String text;
  final ButtonSize size;
  final ButtonVariant variant;
  final ButtonRadius buttonRadius;
  final bool buttonShadow;
  final dynamic Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final radius = _buttonRadius(buttonRadius);
    final width = _buttonWidth(size);
    final height = _buttonHeight(size);
    final textSize = _buttonTextSize(size);

    return SizedBox(
      width: width,
      height: height,
      child: () {
        switch (variant) {
          case ButtonVariant.primary:
            return BuildPrimaryButton(
              text: text,
              textSize: textSize,
              radius: radius,
              shadow: buttonShadow,
              onPressed: onPressed,
            );
          case ButtonVariant.outline:
            return BuildOutlineButton(
              text: text,
              textSize: textSize,
              radius: radius,
              onPressed: onPressed,
            );
          case ButtonVariant.disabled:
            return BuildDisabledButton(
              text: text,
              textSize: textSize,
              radius: radius,
              shadow: buttonShadow,
            );
          case ButtonVariant.secondary:
            return BuildSecondaryButton(
              text: text,
              textSize: textSize,
              radius: radius,
              shadow: buttonShadow,
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
    required this.textSize,
    required this.onPressed,
    required this.radius,
    required this.shadow,
    super.key,
  });

  final String text;
  final double textSize;
  final double radius;
  final bool shadow;
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
        elevation: shadow
            ? _buttonShadow(ButtonShadow.shadow)
            : _buttonShadow(ButtonShadow.noShadow),
      ),
      child: Text(text, style: TextStyle(fontSize: textSize)),
    );
  }
}

class BuildDisabledButton extends StatelessWidget {
  const BuildDisabledButton({
    required this.text,
    required this.textSize,
    required this.radius,
    required this.shadow,
    super.key,
  });

  final String text;
  final double textSize;
  final double radius;
  final bool shadow;

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
        elevation: shadow
            ? _buttonShadow(ButtonShadow.shadow)
            : _buttonShadow(ButtonShadow.noShadow),
      ),
      child: Text(text, style: TextStyle(fontSize: textSize)),
    );
  }
}

class BuildOutlineButton extends StatelessWidget {
  const BuildOutlineButton({
    required this.text,
    required this.textSize,
    required this.onPressed,
    required this.radius,
    super.key,
  });

  final String text;
  final double textSize;
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
      child: Text(text, style: TextStyle(fontSize: textSize)),
    );
  }
}

class BuildSecondaryButton extends StatelessWidget {
  const BuildSecondaryButton({
    required this.text,
    required this.textSize,
    required this.onPressed,
    required this.radius,
    required this.shadow,
    super.key,
  });

  final String text;
  final double textSize;
  final double radius;
  final bool shadow;
  final dynamic Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = _buttonColor(ButtonVariant.secondary);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: AppColor.primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        elevation: shadow
            ? _buttonShadow(ButtonShadow.shadow)
            : _buttonShadow(ButtonShadow.noShadow),
      ),
      child: Text(text, style: TextStyle(fontSize: textSize)),
    );
  }
}
