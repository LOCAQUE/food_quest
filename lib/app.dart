import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/presentation/screen/splash.dart';
import 'package:food_quest/theme.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: customTheme(),
      home: const SplashWidget(),
    );
  }
}
