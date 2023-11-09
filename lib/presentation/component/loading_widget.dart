import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'package:food_quest/gen/colors.gen.dart';

class LoadingWidget extends HookConsumerWidget {
  const LoadingWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.inkDrop(
          color: AppColor.primaryColor,
          size: 200,
        ),
      ),
    );
  }
}
