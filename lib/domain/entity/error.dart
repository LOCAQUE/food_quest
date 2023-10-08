String? validateEmail(String email) {
  // メールアドレスが空の場合
  if (email.isEmpty) {
    return 'メールアドレスを入力してください';
  }

  // @が含まれていない場合
  if (!email.contains('@')) {
    return 'メールアドレスに"@"が含まれていません';
  }

  // @の前に.が含まれていない場合
  final localPart = email.split('@')[0];
  if (!localPart.contains('.')) {
    return 'メールアドレスの"@"の前に"."が必要です';
  }

  // @の後ろに.が含まれていない場合
  final domainPart = email.split('@')[1];
  if (!domainPart.contains('.')) {
    return 'メールアドレスの"@"の後ろに"."が必要です';
  }

  // @の後ろが無効なドメインの場合
  // 無効なドメインの具体的なリストは、実際の要件に応じて追加・変更する必要があります
  const invalidDomains = ['invalid.com', 'wrong.org']; // 仮の無効なドメイン
  if (invalidDomains.contains(domainPart)) {
    return '無効なドメインです';
  }

  return null; // エラーがない場合
}

String? validatePassword(String password) {
  // 1. パスワードが空
  if (password.isEmpty) {
    return 'パスワードを入力してください';
  }

  // 2. パスワードの文字数が8文字以下
  if (password.length <= 8) {
    return 'パスワードは8文字以上である必要があります';
  }

  // 3. パスワードが英数半角でない
  final regex = RegExp(r'^[a-zA-Z0-9]+$');
  if (!regex.hasMatch(password)) {
    return 'パスワードは英数半角のみで入力してください';
  }

  // 4. パスワードに数字が含まれていない
  final hasDigit = RegExp('[0-9]').hasMatch(password);
  if (!hasDigit) {
    return 'パスワードには数字を1つ以上含める必要があります';
  }

  // 5. パスワードに英語が含まれていない
  final hasLetter = RegExp('[a-zA-Z]').hasMatch(password);
  if (!hasLetter) {
    return 'パスワードには英字を1つ以上含める必要があります';
  }

  return null; // エラーがない場合
}
