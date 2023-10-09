import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/presentation/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:food_quest/presentation/screen/top.dart';
import 'package:food_quest/theme.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(supabaseAuthProvider);
    final isSignIn = useState(false);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          auth.onAuthStateChange.listen((event) {
            if (event.event == AuthChangeEvent.signedIn) {
              isSignIn.value = true;
              return;
            } else {
              isSignIn.value = false;
              return;
            }
          });
          return;
        });
        return null;
      },
      const [],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'beta',
      theme: customTheme(),
      home: isSignIn.value ? const BottomNavigationScreen() : const TopScreen(),
    );
  }
}
