import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/select_prefecture/usecase/select_prefecture_usecase_notifier.dart';
import 'package:food_quest/gen/colors.gen.dart';

// 地域ごとに都道府県を表示する
class RegionSection extends StatelessWidget {
  const RegionSection({
    required this.prefectures,
    required this.regionName,
    super.key,
  });

  final String regionName;
  final List<String> prefectures;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          regionName,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: prefectures.map((prefecture) {
              return PrefectureBadge(
                prefecture: prefecture,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

// 都道府県のボタン
class PrefectureBadge extends HookConsumerWidget {
  const PrefectureBadge({
    required this.prefecture,
    super.key,
  });

  final String prefecture;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = useState(false);
    final usecaseNotifier =
        ref.watch(selectPrefectureUsecaseNotifierProvider.notifier);
    final selectingPrefectureList =
        ref.watch(selectPrefectureUsecaseNotifierProvider);

    // 選択中の都道府県のリストに含まれていたら選択状態にする
    if (selectingPrefectureList.contains(prefecture)) {
      isSelected.value = true;
    }

    return GestureDetector(
      onTap: usecaseNotifier.isNumberOfSelectedOverThree && !isSelected.value
          ? null
          : () {
              isSelected.value = !isSelected.value;

              // 選択中の都道府県のリストを取得
              usecaseNotifier.togglePrefecture(
                prefecture: prefecture,
                isSelected: isSelected.value,
              );
            },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected.value ? Colors.grey : Colors.white,
          border: Border.all(
            color: isSelected.value ? Colors.grey : AppColor.primaryColor,
          ),
        ),
        child: Center(
          child: Text(
            prefecture,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
