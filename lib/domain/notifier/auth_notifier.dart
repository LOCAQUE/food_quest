import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../foundation/supabase_client_provider.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthNotifierState with _$AuthNotifierState {
  factory AuthNotifierState({
    @Default(false) bool isLogin,
  }) = _AuthNotifierState;
}

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthNotifierState>((ref) {
      final client = ref.watch(supabaseClientProvider);
      return AuthNotifier(client);
});

class AuthNotifier extends StateNotifier<AuthNotifierState> {

  AuthNotifier(this.client) : super(AuthNotifierState());
  final SupabaseClient client;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp() async {
    try {
      await client.auth.signUp(
        email: emailController.text,
        password: passwordController.text,
      );
    } on AuthException catch (e) {
      debugPrint(e.toString());
    }
  }
}
