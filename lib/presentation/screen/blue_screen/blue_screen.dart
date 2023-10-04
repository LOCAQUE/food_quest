import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlueScreen extends HookConsumerWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(),
    );
  }
}
