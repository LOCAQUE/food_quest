import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/icon_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RoadMapDetailScreen extends HookConsumerWidget {
  const RoadMapDetailScreen({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              
            ],
          ),
        ),
        Positioned(
          bottom: 42,
          left: 0,
          right: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomIconButton(
                  icon: Icons.add,
                  label: 'スポット',
                  onPressed: () {},
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
              OutlinedIconButton(
                icon: Icons.add,
                label: 'メモ・移動',
                onPressed: () {},
                height: 48,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
