import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class GreenScreen extends HookConsumerWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(),
    );
  }
}
