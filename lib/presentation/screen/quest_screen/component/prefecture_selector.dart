// 地域ごとに都道府県を表示する
import 'package:flutter/material.dart';
import 'package:food_quest/gen/colors.gen.dart';

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
              return PrefectureBadge(prefecture: prefecture);
            }).toList(),
          ),
        ),
      ],
    );
  }
}

// 都道府県のバッジ
class PrefectureBadge extends StatelessWidget {
  const PrefectureBadge({
    required this.prefecture,
    super.key,
  });

  final String prefecture;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.primaryColor,
      ),
      child: Center(
        child: Text(
          prefecture,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
