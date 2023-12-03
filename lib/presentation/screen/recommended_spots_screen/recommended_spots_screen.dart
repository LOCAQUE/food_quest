import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class RecommendedSpotsAutoRouterScreen extends AutoRouter {
  const RecommendedSpotsAutoRouterScreen({super.key});
}

@RoutePage()
class RecommendedSpotsScreen extends HookConsumerWidget {
  const RecommendedSpotsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            context.pushRoute(const MapRoute());
          },
          child: const Card(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  'Mapで探す',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
