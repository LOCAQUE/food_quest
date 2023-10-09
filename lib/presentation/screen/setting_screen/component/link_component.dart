import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class LinkComponent extends HookConsumerWidget {
  const LinkComponent({
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String text;
  final dynamic Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          width: 400,
          height: 45,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFFCFCFCF),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: AppColor.textColor,
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFFCFCFCF),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
