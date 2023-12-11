import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class TourHomeAutoRouterScreen extends AutoRouter {
  const TourHomeAutoRouterScreen({super.key});
}

@RoutePage()
class TourHomeScreen extends HookConsumerWidget {
  const TourHomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text('TourHomeScreen'),
      ),
    );
  }
}
