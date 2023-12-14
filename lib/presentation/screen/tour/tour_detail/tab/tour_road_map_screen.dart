import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourRoadMapScreen extends HookConsumerWidget {
  const TourRoadMapScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Center(
        child: Text('行定表'),
      ),
    );
  }
}
