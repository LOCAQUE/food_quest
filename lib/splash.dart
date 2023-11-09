import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/routes/app_router.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    // 例：3秒待機
    await Future.delayed(const Duration(seconds: 3));
    final currentUser = ref.watch(supabaseCurrentUser);

    await context.pushRoute(
      currentUser != null ? const BottomNavigationRoute() : const TopRoute(),
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
