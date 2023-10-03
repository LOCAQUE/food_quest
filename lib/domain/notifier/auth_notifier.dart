import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

part 'auth_notifier.freezed.dart';

@freezed
class AuthNotifierState with _$AuthNotifierState {
  factory AuthNotifierState({
    @Default(false) bool isLogin,
  }) = _AuthNotifierState;
}

final authNotifierProvider =
StateNotifierProvider<AuthNotifier, AuthNotifierState>((ref) {
  return AuthNotifier(ref);
});

class AuthNotifier extends StateNotifier<AuthNotifierState> {


  AuthNotifier(this.ref) : super(AuthNotifierState());
  final Ref ref;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signIn() {
    try {

    } on supabase_flutter.AuthException catch(e) {
      debugPrint(e.toString());
    }
  }


}