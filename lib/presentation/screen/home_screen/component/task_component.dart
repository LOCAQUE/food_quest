import 'package:flutter/material.dart';
import 'package:food_quest/domain/notifier/button_notifier.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/button.dart';

class TaskComponent extends HookConsumerWidget {
  const TaskComponent({
    required this.text,
    required this.achievement,
    required this.target,
    super.key,
  });

  final String text;
  final int achievement;
  final int target;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDone = achievement == target;
    final showGif = ref.watch(showGifProvider);

    final width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 310,
            height: 95,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(text),
                      if (isDone)
                        CustomButton(
                          text: '受取',
                          variant: ButtonVariant.outline,
                          onPressed: () {
                            ref.read(showGifProvider.notifier).state = true;
                          },
                          size: ButtonSize.small,
                        )
                      else
                        const SizedBox(),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 16, // EXPのゲージを太くします
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(50),
                            value: achievement / target,
                            backgroundColor: Colors.grey[300],
                            valueColor: const AlwaysStoppedAnimation(
                              AppColor.primaryColor,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '$achievement / $target',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: width / 2,
            child: showGif
                ? SizedBox(
                    width: 95,
                    height: 95,
                    child: Image.asset('assets/images/gif/bestAnswer.gif'),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
