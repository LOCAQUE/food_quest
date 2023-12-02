import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/domain/application/google_map/auto_complete_search/notifier/auto_complete_search_notifier.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchHeader extends HookConsumerWidget {
  const SearchHeader({
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.popRoute();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        const Gap(8),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: '検索',
              border: InputBorder.none,
            ),
            onTap: () async {
              if (onTap != null) {
                onTap!();
                return;
              }
            },
            onChanged: (value) {
              ref
                  .read(autoCompleteSearchNotifierProvider.notifier)
                  .search(word: value);
            },
          ),
        ),
      ],
    );
  }
}
