import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/select_prefecture/notifier/select_prefecture_notifier.dart';
import 'package:food_quest/domain/application/select_prefecture/usecase/select_prefecture_usecase_notifier.dart';
import 'package:food_quest/domain/entity/constants/list.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/explanation_guide_widget.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/prefecture_selector.dart';

@RoutePage()
class QuestSelectPrefectureScreen extends HookConsumerWidget {
  const QuestSelectPrefectureScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(selectPrefectureNotifierProvider.notifier);
    final usecaseNotifier =
        ref.watch(selectPrefectureUsecaseNotifierProvider.notifier);

    final selectPrefectureUsecase =
        ref.watch(selectPrefectureUsecaseNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('都道府県を選択'),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            context.router.pop();
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Gap(16),
                  const ExplanationGuideWidget(),
                  for (final entry in allPrefectures.entries)
                    RegionSection(
                      regionName: entry.key,
                      prefectures: entry.value,
                    ),
                ],
              ),
            ),
          ),
          if (usecaseNotifier.isSelectable)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: ElevatedButton(
                  onPressed: () {
                    notifier.updatePrefecture(
                      prefectureList: selectPrefectureUsecase,
                    );
                    context.router.pop();
                  },
                  child: Text(
                    '選択する(${selectPrefectureUsecase.length}件)',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
