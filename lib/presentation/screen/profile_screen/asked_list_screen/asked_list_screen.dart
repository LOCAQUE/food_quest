import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/question_task_notifier.dart';
import 'package:food_quest/presentation/screen/profile_screen/asked_list_screen/asked_list_screen_notifier.dart';

class AskedListScreen extends HookConsumerWidget {
  const AskedListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      askedListScreenNotifierProvider.select((state) => state.isLoading),
    );

    final myQuestionList = ref.watch(
          questionTaskNotifierProvider.select((state) => state.myQuestionList),
        ) ??
        [];

    if (isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (myQuestionList.isEmpty) {
      return const SizedBox.shrink();
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: myQuestionList.length,
        itemBuilder: (context, index) {
          final question = myQuestionList[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.users?.name ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Gap(32),
                    Text(question.contents),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(question.users?.prefecture ?? ''),
                        Text(question.formattedDeadLine),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        // itemExtent: 100,
      ),
    );
  }
}
