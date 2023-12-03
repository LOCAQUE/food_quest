import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

ThemeData customTheme() {
  // TODO(username): テーマ切り替える.
  final base = ThemeData.light();
  return base.copyWith(
    primaryColor: AppColor.secondColor,
    cardColor: Colors.white,
    scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColor.textColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.secondColor,
    ),
    textTheme: _buildStaffTextTheme(base.textTheme),
    primaryTextTheme: _buildStaffTextTheme(base.primaryTextTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: AppColor.primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        foregroundColor: AppColor.primaryColor,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColor.accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

TextTheme _buildStaffTextTheme(TextTheme textTheme) {
  return textTheme.copyWith(
    displayLarge: textTheme.displayLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: textTheme.displayMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: textTheme.displaySmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: textTheme.headlineLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: textTheme.headlineMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: textTheme.headlineSmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: textTheme.bodyLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 16,
    ),
    bodyMedium: textTheme.bodyMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 14,
    ),
    bodySmall: textTheme.bodySmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 12,
    ),
    labelLarge: textTheme.labelLarge!.copyWith(
      color: AppColor.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w200,
    ),
    labelMedium: textTheme.labelMedium!.copyWith(
      color: AppColor.textColor,
      fontSize: 14,
      fontWeight: FontWeight.w200,
    ),
    labelSmall: textTheme.labelSmall!.copyWith(
      color: AppColor.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w200,
    ),
  );
}
