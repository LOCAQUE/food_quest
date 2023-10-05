import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrangeScreen extends HookConsumerWidget {
  const OrangeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(),
    );
  }
}
