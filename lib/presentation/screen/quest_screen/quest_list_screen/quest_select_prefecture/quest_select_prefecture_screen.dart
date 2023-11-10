import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/domain/entity/list.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/explanation_guide_widget.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/prefecture_selector.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class QuestSelectPrefectureScreen extends HookConsumerWidget {
  const QuestSelectPrefectureScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(16),
              const ExplanationGuideWidget(),
              for (final entry in allPrefectures.entries)
                RegionSection(regionName: entry.key, prefectures: entry.value),
            ],
          ),
        ),
      ),
    );
  }
}
