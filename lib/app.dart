import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/routes/app_router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/splash.dart';
import 'package:food_quest/theme.dart';

class App extends HookConsumerWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: customTheme(),
      routerConfig: _appRouter.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
    );
  }
}
