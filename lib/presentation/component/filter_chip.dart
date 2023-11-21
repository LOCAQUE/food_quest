import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/%20ui_provier/filter_chip_list.dart';

class FliterChipWidget extends HookConsumerWidget {
  const FliterChipWidget({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterChip = ref.watch(filterChipListProvider);

    return FilterChip(
      disabledColor: Colors.grey,
      selectedColor: AppColor.primaryColor,
      label: Text(title),
      selected: filterChip.contains(title),
      onSelected: (bool value) {
        ref.read(filterChipListProvider.notifier).addFilterChip(
              title: title,
              value: value,
            );
      },
    );
  }
}
