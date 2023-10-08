import 'package:flutter/cupertino.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/error.dart';
import 'package:food_quest/domain/entity/user_data.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthNotifierState with _$AuthNotifierState {
  factory AuthNotifierState({
    UserData? currentUser,
    String? emailError,
    String? passwordError,
  }) = _AuthNotifierState;
}

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthNotifierState>((ref) {
  final client = ref.watch(supabaseClientProvider);
  return AuthNotifier(client);
});

class AuthNotifier extends StateNotifier<AuthNotifierState> {
  AuthNotifier(this.client) : super(AuthNotifierState()) {
    _addTextListeners();
    _addFormListeners();
  }
  final SupabaseClient client;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final ValueNotifier<bool> isFormValid = ValueNotifier<bool>(false);

  void _addTextListeners() {
    emailController.addListener(() {
      _validateForm();
      resetEmailError(); // メールアドレスが編集されるたびにエラーメッセージをリセット
    });
    passwordController.addListener(() {
      _validateForm();
      resetPasswordError(); // パスワードが編集されるたびにエラーメッセージをリセット
    });
  }

  void _addFormListeners() {
    nameController.addListener(_validateProfileForm);
    addressController.addListener(_validateProfileForm);
  }

  void _validateForm() {
    isFormValid.value =
        emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }

  void _validateProfileForm() {
    isFormValid.value =
        nameController.text.isNotEmpty && addressController.text.isNotEmpty;
  }

  // メールエラーメッセージをリセットするメソッドを追加
  void resetEmailError() {
    if (state.emailError != null) {
      state = state.copyWith(emailError: null);
    }
  }

  // パスワードエラーメッセージをリセットするメソッドを追加
  void resetPasswordError() {
    if (state.passwordError != null) {
      state = state.copyWith(passwordError: null);
    }
  }

  Future<bool> signUp() async {
    final emailError = validateEmail(emailController.text);
    final passwordError = validatePassword(passwordController.text);

    if (emailError != null || passwordError != null) {
      debugPrint(emailError);
      state = state.copyWith(emailError: emailError);
      state = state.copyWith(passwordError: passwordError);
      return false; // メールアドレスもしくはパスワードに問題があるため、関数を終了します。
    }

    try {
      //supabaseAuthにユーザー作成
      final authResponse = await client.auth.signUp(
        email: emailController.text,
        password: passwordController.text,
      );
      //idが帰ってきたらidを使用してDBにユーザー作成する
      if (authResponse.user?.id != null) {
        await createUserData(uid: authResponse.user!.id);
        //登録したユーザーを取得
        final currentUser = await getCurrentUser(uid: authResponse.user!.id);
        state = state.copyWith(currentUser: currentUser);
        return true;
      }
      //idが帰ってこなければUserDataはnullになる
      //nullの場合HomeScreenでエラーダイアログ出るようにする
      return false;
    } on AuthException catch (e) {
      if (e.message == 'auth/email-already-in-use') {
        debugPrint('このメールアドレスはすでに使用されています。');
        state = state.copyWith(emailError: 'このメールアドレスはすでに使用されています。');
      } else {
        debugPrint(e.toString());
      }
      return false;
    }
  }

  Future<void> createUserData({required String uid}) async {
    try {
      final sendUserData = UserData(
        id: uid,
        email: emailController.text,
        name: '',
        prefecture: '',
      ).toJson();
      await client.from('users').insert(sendUserData);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // 名前と都道府県を受け取ってDBに保存する
  Future<void> updateUserData() async {
    try {
      final sendUserData = UserData(
        id: state.currentUser!.id,
        email: state.currentUser!.email,
        name: nameController.text,
        prefecture: addressController.text,
      ).toJson();
      await client
          .from('users')
          .update(sendUserData)
          .eq('id', state.currentUser!.id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<UserData?> getCurrentUser({required String uid}) async {
    try {
      final response =
          await client.from('users').select<PostgrestList>().eq('id', uid);
      return UserData.fromJson(response.first);
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<void> signIn() async {
    try {
      final authResponse = await client.auth.signInWithPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if (authResponse.user?.id != null) {
        final currentUser = await getCurrentUser(uid: authResponse.user!.id);
        state = state.copyWith(currentUser: currentUser);
      }
      return;
    } on AuthException catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> logout() async {
    try {
      await client.auth.signOut();
    } on AuthException catch (e) {
      debugPrint(e.toString());
    }
  }
}
