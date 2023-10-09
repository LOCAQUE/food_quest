import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/presentation/screen/top.dart';

import 'package:food_quest/presentation/screen/bottom_navigation/bottom_navigation_screen.dart'; // おそらくこれが必要です

class SplashWidget extends ConsumerStatefulWidget {
  const SplashWidget({super.key});

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends ConsumerState<SplashWidget> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    // 例：3秒待機
    await Future.delayed(const Duration(seconds: 3));

    final auth = ref.watch(supabaseAuthProvider);
    var isSignIn = false;

    auth.onAuthStateChange.listen((event) {
      if (event.event == AuthChangeEvent.signedIn) {
        isSignIn = true;
      } else {
        isSignIn = false;
      }
    });

    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) =>
            isSignIn ? const BottomNavigationScreen() : const TopScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F7),
      body: Center(
        child: Image.asset('assets/gif/splash.gif'),
      ),
    );
  }
}
